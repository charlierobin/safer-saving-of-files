#tag Class
Protected Class App
Inherits DesktopApplication
	#tag MenuHandler
		Function LoadText() As Boolean Handles LoadText.Action
		  try
		    
		    var data as String = ""
		    
		    Files.load( data, SpecialFolder.Desktop.Child( "test.txt" ) )
		    
		    System.DebugLog( "txt: " + data )
		    
		    
		    var data2 as String = Files.load( SpecialFolder.Desktop.Child( "test.txt" ) )
		    
		    System.DebugLog( "txt 2: " + data2 )
		    
		    
		    var json as JSONItem = Files.load( SpecialFolder.Desktop.Child( "test.json" ) )
		    
		    System.DebugLog( json.ToString )
		    
		    
		    var xml as XMLDocument = Files.load( SpecialFolder.Desktop.Child( "test.xml" ) )
		    
		    System.DebugLog( xml.ToString )
		    
		    
		  catch e as RuntimeException
		    
		    MessageBox( e.Message + EndOfLine().Native + EndOfLine().Native + "Code: " + e.ErrorNumber.ToString() )
		    
		  end try
		  
		  return true
		  
		  
		  
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function SaveText() As Boolean Handles SaveText.Action
		  try
		    
		    var data as String = "Hi there"
		    
		    Files.save( data, SpecialFolder.Desktop.Child( "test.txt" ), Files.CheckIfAlreadyExists.No )
		    
		    // Files.safeSave( data, SpecialFolder.Desktop.Child( "test.txt" ), Files.CheckIfAlreadyExists.Yes, Files.LeaveTempFileFlag.No )
		    
		    
		    var json as JSONItem = JSONUtilities.emptyObject()
		    
		    Files.save( json, SpecialFolder.Desktop.Child( "test.json" ), Files.CheckIfAlreadyExists.No )
		    
		    // Files.safeSave( json, SpecialFolder.Desktop.Child( "test.json" ), Files.CheckIfAlreadyExists.Yes, Files.LeaveTempFileFlag.No )
		    
		    
		    var xml as XMLDocument = new XMLDocument( "<?xml version='1.0'?><Names><Name ID='0001'><FirstName>Charlie</FirstName></Name></Names>" )
		    
		    Files.save( xml, SpecialFolder.Desktop.Child( "test.xml" ), Files.CheckIfAlreadyExists.No )
		    
		    // Files.safeSave( xml, SpecialFolder.Desktop.Child( "test.xml" ), Files.CheckIfAlreadyExists.Yes, Files.LeaveTempFileFlag.No )
		    
		    
		  catch e as RuntimeException
		    
		    MessageBox( e.Message + EndOfLine().Native + EndOfLine().Native + "Code: " + e.ErrorNumber.ToString() )
		    
		  end try
		  
		  return true
		  
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function TrashFiles() As Boolean Handles TrashFiles.Action
		  try
		    
		    Files.moveToTrash( SpecialFolder.Desktop.Child( "test.txt" ) )
		    
		    Files.moveToTrash( "/Volumes/external/test.xojo_binary_project" )
		    
		    Files.moveToTrash( SpecialFolder.Desktop.Child( "test.xml" ) )
		    
		  catch e as RuntimeException
		    
		    MessageBox( e.Message + EndOfLine().Native + EndOfLine().Native + "Code: " + e.ErrorNumber.ToString() )
		    
		  end try
		  
		  return true
		  
		End Function
	#tag EndMenuHandler


	#tag Constant, Name = kEditClear, Type = String, Dynamic = False, Default = \"&Delete", Scope = Public
		#Tag Instance, Platform = Windows, Language = Default, Definition  = \"&Delete"
		#Tag Instance, Platform = Linux, Language = Default, Definition  = \"&Delete"
	#tag EndConstant

	#tag Constant, Name = kFileQuit, Type = String, Dynamic = False, Default = \"&Quit", Scope = Public
		#Tag Instance, Platform = Windows, Language = Default, Definition  = \"E&xit"
	#tag EndConstant

	#tag Constant, Name = kFileQuitShortcut, Type = String, Dynamic = False, Default = \"", Scope = Public
		#Tag Instance, Platform = Mac OS, Language = Default, Definition  = \"Cmd+Q"
		#Tag Instance, Platform = Linux, Language = Default, Definition  = \"Ctrl+Q"
	#tag EndConstant


	#tag ViewBehavior
		#tag ViewProperty
			Name="Name"
			Visible=false
			Group="ID"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=false
			Group="ID"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=false
			Group="ID"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=false
			Group="Position"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=false
			Group="Position"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="AllowAutoQuit"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="AllowHiDPI"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="BugVersion"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Copyright"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Description"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LastWindowIndex"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="MajorVersion"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="MinorVersion"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="NonReleaseVersion"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="RegionCode"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="StageCode"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Version"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="_CurrentEventTime"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
