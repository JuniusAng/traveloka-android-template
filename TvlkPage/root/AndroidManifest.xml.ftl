<manifest xmlns:android="http://schemas.android.com/apk/res/android" >

    <application>
        <activity android:name="${relativePackage}.${featureName}Activity"
            android:label="@string/app_name"
            android:launchMode="standard"
            android:screenOrientation="portrait"
            android:theme="@style/noAnimTheme">
        </activity>
    </application>

</manifest>
