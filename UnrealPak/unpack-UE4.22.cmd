for %%s in (*.pak) do (
	Core\UE4\UnrealPak\UnrealPak.exe %1 -list > %%s.txt
	Core\UE4\UnrealPak\UnrealPak.exe %1 -extract ../../../unpacked/
)
pause