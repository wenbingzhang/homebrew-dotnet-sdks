cask "dotnet-sdk-2-1-603" do
    version "2.1.603,2.1.603"
    
    url "https://download.visualstudio.microsoft.com/download/pr/c5a47d00-e5cb-46cb-94f4-1a87c6cb3e7c/30ff936476feb5c0df40a10a0e777b9f/dotnet-sdk-#{version.before_comma}-osx-gs-x64.pkg"
    sha256 "cb4aff9f78431a745f4554d78a0f640436c6b3c79755419cdfb30c8130e85021"
    pkg "dotnet-sdk-2.1.603-osx-gs-x64.pkg"

    name ".NET Core SDK 2.1.603,2.1.603"
    desc "Developer platform"
    homepage "https://www.microsoft.com/net/core#macos"

    conflicts_with cask: [
        "dotnet-sdk",
        "homebrew/cask-versions/dotnet-preview",
        "homebrew/cask-versions/dotnet-sdk-preview",
    ]

    uninstall pkgutil: [
        "com.microsoft.dotnet.*.#{version.after_comma}.*",
        "com.microsoft.netstandard.pack.targeting.*.#{version.after_comma}.*",
        "com.microsoft.dotnet.*.#{version.before_comma}.*",
        "com.microsoft.netstandard.pack.targeting.*.#{version.before_comma}.*",
    ]

    zap trash: ["~/.dotnet", "~/.nuget"]
end
