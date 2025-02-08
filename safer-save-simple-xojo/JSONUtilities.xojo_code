#tag Module
Protected Module JSONUtilities
	#tag Method, Flags = &h1
		Protected Function emptyArray() As JSONItem
		  return new JSONItem( kEmptyJSONArray )
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function emptyObject() As JSONItem
		  return new JSONItem( kEmptyJSONObject )
		  
		End Function
	#tag EndMethod


	#tag Constant, Name = kEmptyJSONArray, Type = String, Dynamic = False, Default = \"[]", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kEmptyJSONObject, Type = String, Dynamic = False, Default = \"{}", Scope = Private
	#tag EndConstant


	#tag ViewBehavior
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Module
#tag EndModule
