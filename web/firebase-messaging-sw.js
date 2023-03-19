importScripts("https://www.gstatic.com/firebasejs/8.10.0/firebase-app.js");
importScripts(
  "https://www.gstatic.com/firebasejs/8.10.0/firebase-messaging.js"
);

const firebaseConfig = {
  apiKey: "AIzaSyCc2Wp7mme0uygYd1Wfsp6uiqolTjkkCE8",
  authDomain: "sipmm-cdd60.firebaseapp.com",
  projectId: "sipmm-cdd60",
  storageBucket: "sipmm-cdd60.appspot.com",
  messagingSenderId: "942407023125",
  appId: "1:942407023125:web:780b1469fd9ad46e646c1c",
  measurementId: "G-QQPNNVPN55",
};
firebase.initializeApp(firebaseConfig);

const messaging = firebase.messaging();

// Optional:
messaging.onBackgroundMessage((message) => {
  console.log("onBackgroundMessage", message);
});
