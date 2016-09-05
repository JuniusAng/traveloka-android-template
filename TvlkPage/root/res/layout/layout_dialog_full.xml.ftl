<!--the container in base layout that we inflate this layout into, is a nested scroll view, it is cool to add another scrollview though, but let's do not-->
<?xml version="1.0" encoding="utf-8"?>
<layout xmlns:android="http://schemas.android.com/apk/res/android"
        xmlns:tools="http://schemas.android.com/tools"
        xmlns:app="http://schemas.android.com/apk/res-auto">
    <data>
    	<variable
	        name="viewModel"
	        type="${packageName}.${vmClass}" />
    </data>
	<LinearLayout
	    android:layout_width="match_parent"
	    android:layout_height="match_parent"
	    android:orientation="vertical"
	    android:padding="@dimen/common_dp_16"
	    tools:context="${packageName}.${featureName}Activity">

	</LinearLayout>

</layout>