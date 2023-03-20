part of '../auth_page.dart';

class BodyAuthPage extends StatefulWidget {
  const BodyAuthPage({super.key});

  @override
  State<BodyAuthPage> createState() => _BodyAuthPageState();
}

class _BodyAuthPageState extends State<BodyAuthPage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<LoginBloc>()..add(const LoginEvent.started()),
      child: BlocConsumer<LoginBloc, LoginState>(
        listener: (context, state) {
          state.authFailureOrSuccessOption.fold(() {}, (either) {
            either.fold((l) {
              FlushbarHelper.createError(
                  message: l.map(
                invalidEmailAndPasswordCombination: (_) =>
                    'Incorrect user email or password!',
                failed: (_) => 'Something went wrong',
                invalidRequest: (_) => 'Filled all form!',
              )).show(context);
              // clear state
              context.read<LoginBloc>().add(const LoginEvent.started());
            }, (r) {
              //route
              getIt<AppRouter>()
                  .replace(HomeRoute(selectMenu: MenuHome.dashboard));
              context.read<AuthBloc>().add(AuthEvent.loggedIn(r));
            });
          });
        },
        builder: (context, state) {
          return BlocBuilder<LoginBloc, LoginState>(
            builder: (context, state) {
              if (state.isSubmitting) {
                return LoadingPage(
                  isSubmitted: state.isSubmitting,
                  isNotSubmit: false,
                );
              }
              return ListView(
                physics: const BouncingScrollPhysics(),
                shrinkWrap: true,
                children: [
                  Container(
                    alignment: FractionalOffset.center,
                    child: SizedBox(
                      width: 350,
                      height: 400,
                      child: Card(
                        elevation: 5,
                        child: Form(
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                Strings.silahakanMasuk,
                                style: FontApp.primaryStyle.copyWith(
                                    fontSize: Dimens.dp20,
                                    fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center,
                              ),
                              const _EmailForm(),
                              const _PasswordForm(),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 25, left: 20, right: 20),
                                child: Center(
                                  child: CustomElevationButton(
                                    height: 52,
                                    width: 300,
                                    color: ColorApp.primaryColor,
                                    onTap: () {
                                      if (state.email.isValid() == false ||
                                          state.password.isValid() == false) {
                                        FlushbarHelper.createInformation(
                                            message:
                                                'Email dan Password tidak boleh kosong!');
                                      } else {
                                        context.read<LoginBloc>().add(
                                            LoginEvent.submit(
                                                state.email, state.password));
                                      }
                                    },
                                    style: FontApp.primaryStyle
                                        .copyWith(color: Colors.white),
                                    text: Strings.masuk,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              );
            },
          );
        },
      ),
    );
  }
}

class _EmailForm extends StatelessWidget {
  const _EmailForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(
      // buildWhen: (previous, current) => previous.email != current.email,
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.only(top: 25, left: 20, right: 20),
          child: TextFormField(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            decoration: InputDecoration(
              errorText: state.email.value.fold(
                  (l) => l.maybeMap(
                      orElse: () => null, invalidEmail: (_) => 'Invalid email'),
                  (_) => null),
              hintStyle: TextStyle(color: ColorApp.primaryColor),
              labelStyle: TextStyle(color: ColorApp.primaryColor),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide(color: ColorApp.primaryColor),
              ),
              labelText: 'Email Address',
              border: const OutlineInputBorder(),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide(color: ColorApp.primaryColor),
              ),
            ),
            autocorrect: false,
            autofocus: true,
            onChanged: (value) =>
                context.read<LoginBloc>().add(LoginEvent.emailChanged(value)),
            validator: (value) =>
                context.read<LoginBloc>().state.email.value.fold(
                    (l) => l.maybeMap(
                          orElse: () => null,
                          invalidEmail: (value) => 'Invalid Email',
                          empty: (value) => 'Cannot be empty',
                        ),
                    (r) => null),
          ),
        );
      },
    );
  }
}

class _PasswordForm extends StatelessWidget {
  const _PasswordForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(
      // buildWhen: (previous, current) => previous.password != current.password,
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.only(top: 25, left: 20, right: 20),
          child: TextFormField(
            obscureText: !state.passwordVisibility,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            decoration: InputDecoration(
              errorText: state.password.value.fold(
                  (l) => l.maybeMap(
                      orElse: () => null,
                      invalidPassword: (_) => 'Invalid Password'),
                  (_) => null),
              hintStyle: TextStyle(color: ColorApp.primaryColor),
              labelStyle: TextStyle(color: ColorApp.primaryColor),
              suffixIcon: IconButton(
                onPressed: () {
                  context
                      .read<LoginBloc>()
                      .add(const LoginEvent.togglePassword());
                },
                icon: Icon(
                    !state.passwordVisibility
                        ? Icons.visibility
                        : Icons.visibility_off,
                    color: ColorApp.primaryColor),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide(color: ColorApp.primaryColor),
              ),
              labelText: 'Password',
              border: const OutlineInputBorder(),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide(color: ColorApp.primaryColor),
              ),
            ),
            onChanged: (value) => context
                .read<LoginBloc>()
                .add(LoginEvent.passwordChanged(value)),
            validator: (value) =>
                context.read<LoginBloc>().state.password.value.fold(
                    (l) => l.maybeMap(
                          orElse: () => null,
                          invalidPassword: (value) => 'Invalid Password' ,
                          empty: (value) => 'Cannot be empty',
                        ),
                    (r) => null),
          ),
        );
      },
    );
  }
}
