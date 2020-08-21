for %%s in (*.pak) do (
	Core\UE4\UnrealPak\UnrealPak.exe %%s -list > %%s.txt
	Core\UE4\UnrealPak\UnrealPak.exe %%s -extract ../../../unpacked/
)
pause