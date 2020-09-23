<manifest xmlns:android="http://schemas.android.com/apk/res/android">

    <uses-permission android:name="android.permission.INTERNET"/>
    <uses-permission android:name="android.permission.ACCESS_NETWORK_STATE"/>

    <application>
        <activity android:name="${packageName}.${activityPackage}.${activityClass}"
            android:configChanges="keyboardHidden|orientation|screenSize"
            android:screenOrientation="portrait" />
    </application>
</manifest>
