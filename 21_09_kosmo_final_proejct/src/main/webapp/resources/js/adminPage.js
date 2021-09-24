

//For Firebase JavaScript SDK v7.20.0 and later, `measurementId` is an optional field
  const firebaseConfig = {
		    apiKey: "AIzaSyDzY2mBhNbIggaoDccNblTUQodHLRWVOUE",
		    authDomain: "cmis-430ec.firebaseapp.com",
		    projectId: "cmis-430ec",
		    storageBucket: "cmis-430ec.appspot.com",
		    messagingSenderId: "636226969812",
		    appId: "1:636226969812:web:608e8311e0ff2754781b41",
		    measurementId: "G-BFS844XTQ1"
		  };
  
  import { getAnalytics } from "firebase/analytics";

  const analytics = getAnalytics();
  
  import { getAnalytics, logEvent } from "firebase/analytics";

  const analytics = getAnalytics();
  logEvent(analytics, 'notification_received');
