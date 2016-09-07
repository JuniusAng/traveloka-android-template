<manifest xmlns:android="http://schemas.android.com/apk/res/android" >

    <application>
        <activity android:name="${(packNameNew?lower_case)}.${pageName?lower_case}Activity"
            android:label="@string/app_name"
            android:launchMode="standard"
            android:screenOrientation="portrait"
            android:theme="@style/noAnimTheme">
        </activity>
    </application>

</manifest>
