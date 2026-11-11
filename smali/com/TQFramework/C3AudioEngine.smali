.class public Lcom/TQFramework/C3AudioEngine;
.super Ljava/lang/Object;
.source "C3AudioEngine.java"


# static fields
.field private static backgroundMusicPlayer:Lcom/TQFramework/C3MusicEngine;

.field private static mContext:Landroid/content/Context;

.field private static sResSourcePath:Ljava/lang/String;

.field private static soundPlayer:Lcom/TQFramework/C3SoundEngine;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    sput-object p1, Lcom/TQFramework/C3AudioEngine;->mContext:Landroid/content/Context;

    .line 18
    return-void
.end method

.method public static SetResPath(Ljava/lang/String;)V
    .locals 0
    .param p0, "sResPath"    # Ljava/lang/String;

    .prologue
    .line 28
    sput-object p0, Lcom/TQFramework/C3AudioEngine;->sResSourcePath:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public static end()V
    .locals 1

    .prologue
    .line 112
    sget-object v0, Lcom/TQFramework/C3AudioEngine;->backgroundMusicPlayer:Lcom/TQFramework/C3MusicEngine;

    invoke-virtual {v0}, Lcom/TQFramework/C3MusicEngine;->end()V

    .line 113
    sget-object v0, Lcom/TQFramework/C3AudioEngine;->soundPlayer:Lcom/TQFramework/C3SoundEngine;

    invoke-virtual {v0}, Lcom/TQFramework/C3SoundEngine;->end()V

    .line 114
    return-void
.end method

.method public static getBackgroundMusicVolume()F
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/TQFramework/C3AudioEngine;->backgroundMusicPlayer:Lcom/TQFramework/C3MusicEngine;

    invoke-virtual {v0}, Lcom/TQFramework/C3MusicEngine;->getBackgroundVolume()F

    move-result v0

    return v0
.end method

.method public static getEffectsVolume()F
    .locals 1

    .prologue
    .line 84
    sget-object v0, Lcom/TQFramework/C3AudioEngine;->soundPlayer:Lcom/TQFramework/C3SoundEngine;

    invoke-virtual {v0}, Lcom/TQFramework/C3SoundEngine;->getEffectsVolume()F

    move-result v0

    return v0
.end method

.method public static init()V
    .locals 2

    .prologue
    .line 21
    new-instance v0, Lcom/TQFramework/C3MusicEngine;

    sget-object v1, Lcom/TQFramework/C3AudioEngine;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/TQFramework/C3MusicEngine;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/TQFramework/C3AudioEngine;->backgroundMusicPlayer:Lcom/TQFramework/C3MusicEngine;

    .line 22
    sget-object v0, Lcom/TQFramework/C3AudioEngine;->backgroundMusicPlayer:Lcom/TQFramework/C3MusicEngine;

    sget-object v1, Lcom/TQFramework/C3AudioEngine;->sResSourcePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/TQFramework/C3MusicEngine;->SetResPath(Ljava/lang/String;)V

    .line 23
    new-instance v0, Lcom/TQFramework/C3SoundEngine;

    sget-object v1, Lcom/TQFramework/C3AudioEngine;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/TQFramework/C3SoundEngine;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/TQFramework/C3AudioEngine;->soundPlayer:Lcom/TQFramework/C3SoundEngine;

    .line 24
    sget-object v0, Lcom/TQFramework/C3AudioEngine;->soundPlayer:Lcom/TQFramework/C3SoundEngine;

    sget-object v1, Lcom/TQFramework/C3AudioEngine;->sResSourcePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/TQFramework/C3SoundEngine;->SetResPath(Ljava/lang/String;)V

    .line 25
    return-void
.end method

.method public static isBackgroundMusicPlaying()Z
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/TQFramework/C3AudioEngine;->backgroundMusicPlayer:Lcom/TQFramework/C3MusicEngine;

    invoke-virtual {v0}, Lcom/TQFramework/C3MusicEngine;->isBackgroundMusicPlaying()Z

    move-result v0

    return v0
.end method

.method public static pauseAllEffects()V
    .locals 1

    .prologue
    .line 104
    sget-object v0, Lcom/TQFramework/C3AudioEngine;->soundPlayer:Lcom/TQFramework/C3SoundEngine;

    invoke-virtual {v0}, Lcom/TQFramework/C3SoundEngine;->pauseAllEffects()V

    .line 105
    return-void
.end method

.method public static pauseBackgroundMusic()V
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/TQFramework/C3AudioEngine;->backgroundMusicPlayer:Lcom/TQFramework/C3MusicEngine;

    invoke-virtual {v0}, Lcom/TQFramework/C3MusicEngine;->pauseBackgroundMusic()V

    .line 45
    return-void
.end method

.method public static pauseEffect(I)V
    .locals 1
    .param p0, "soundId"    # I

    .prologue
    .line 76
    sget-object v0, Lcom/TQFramework/C3AudioEngine;->soundPlayer:Lcom/TQFramework/C3SoundEngine;

    invoke-virtual {v0, p0}, Lcom/TQFramework/C3SoundEngine;->pauseEffect(I)V

    .line 77
    return-void
.end method

.method public static playBackgroundMusic(Ljava/lang/String;Z)V
    .locals 1
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "isLoop"    # Z

    .prologue
    .line 36
    sget-object v0, Lcom/TQFramework/C3AudioEngine;->backgroundMusicPlayer:Lcom/TQFramework/C3MusicEngine;

    invoke-virtual {v0, p0, p1}, Lcom/TQFramework/C3MusicEngine;->playBackgroundMusic(Ljava/lang/String;Z)V

    .line 37
    return-void
.end method

.method public static playEffect(Ljava/lang/String;Z)I
    .locals 1
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "isLoop"    # Z

    .prologue
    .line 68
    sget-object v0, Lcom/TQFramework/C3AudioEngine;->soundPlayer:Lcom/TQFramework/C3SoundEngine;

    invoke-virtual {v0, p0, p1}, Lcom/TQFramework/C3SoundEngine;->playEffect(Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public static preloadBackgroundMusic(Ljava/lang/String;)V
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 32
    sget-object v0, Lcom/TQFramework/C3AudioEngine;->backgroundMusicPlayer:Lcom/TQFramework/C3MusicEngine;

    invoke-virtual {v0, p0}, Lcom/TQFramework/C3MusicEngine;->preloadBackgroundMusic(Ljava/lang/String;)V

    .line 33
    return-void
.end method

.method public static preloadEffect(Ljava/lang/String;)V
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 92
    sget-object v0, Lcom/TQFramework/C3AudioEngine;->soundPlayer:Lcom/TQFramework/C3SoundEngine;

    invoke-virtual {v0, p0}, Lcom/TQFramework/C3SoundEngine;->preloadEffect(Ljava/lang/String;)I

    .line 93
    return-void
.end method

.method public static resumeAllEffects()V
    .locals 1

    .prologue
    .line 108
    sget-object v0, Lcom/TQFramework/C3AudioEngine;->soundPlayer:Lcom/TQFramework/C3SoundEngine;

    invoke-virtual {v0}, Lcom/TQFramework/C3SoundEngine;->resumeAllEffects()V

    .line 109
    return-void
.end method

.method public static resumeBackgroundMusic()V
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/TQFramework/C3AudioEngine;->backgroundMusicPlayer:Lcom/TQFramework/C3MusicEngine;

    invoke-virtual {v0}, Lcom/TQFramework/C3MusicEngine;->resumeBackgroundMusic()V

    .line 49
    return-void
.end method

.method public static resumeEffect(I)V
    .locals 1
    .param p0, "soundId"    # I

    .prologue
    .line 80
    sget-object v0, Lcom/TQFramework/C3AudioEngine;->soundPlayer:Lcom/TQFramework/C3SoundEngine;

    invoke-virtual {v0, p0}, Lcom/TQFramework/C3SoundEngine;->resumeEffect(I)V

    .line 81
    return-void
.end method

.method public static rewindBackgroundMusic()V
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/TQFramework/C3AudioEngine;->backgroundMusicPlayer:Lcom/TQFramework/C3MusicEngine;

    invoke-virtual {v0}, Lcom/TQFramework/C3MusicEngine;->rewindBackgroundMusic()V

    .line 53
    return-void
.end method

.method public static setBackgroundMusicVolume(F)V
    .locals 1
    .param p0, "volume"    # F

    .prologue
    .line 64
    sget-object v0, Lcom/TQFramework/C3AudioEngine;->backgroundMusicPlayer:Lcom/TQFramework/C3MusicEngine;

    invoke-virtual {v0, p0}, Lcom/TQFramework/C3MusicEngine;->setBackgroundVolume(F)V

    .line 65
    return-void
.end method

.method public static setContext(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 12
    sput-object p0, Lcom/TQFramework/C3AudioEngine;->mContext:Landroid/content/Context;

    .line 13
    return-void
.end method

.method public static setEffectsVolume(F)V
    .locals 1
    .param p0, "volume"    # F

    .prologue
    .line 88
    sget-object v0, Lcom/TQFramework/C3AudioEngine;->soundPlayer:Lcom/TQFramework/C3SoundEngine;

    invoke-virtual {v0, p0}, Lcom/TQFramework/C3SoundEngine;->setEffectsVolume(F)V

    .line 89
    return-void
.end method

.method public static stopAllEffects()V
    .locals 1

    .prologue
    .line 100
    sget-object v0, Lcom/TQFramework/C3AudioEngine;->soundPlayer:Lcom/TQFramework/C3SoundEngine;

    invoke-virtual {v0}, Lcom/TQFramework/C3SoundEngine;->stopAllEffects()V

    .line 101
    return-void
.end method

.method public static stopBackgroundMusic()V
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/TQFramework/C3AudioEngine;->backgroundMusicPlayer:Lcom/TQFramework/C3MusicEngine;

    invoke-virtual {v0}, Lcom/TQFramework/C3MusicEngine;->stopBackgroundMusic()V

    .line 41
    return-void
.end method

.method public static stopEffect(I)V
    .locals 1
    .param p0, "soundId"    # I

    .prologue
    .line 72
    sget-object v0, Lcom/TQFramework/C3AudioEngine;->soundPlayer:Lcom/TQFramework/C3SoundEngine;

    invoke-virtual {v0, p0}, Lcom/TQFramework/C3SoundEngine;->stopEffect(I)V

    .line 73
    return-void
.end method

.method public static unloadEffect(Ljava/lang/String;)V
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 96
    sget-object v0, Lcom/TQFramework/C3AudioEngine;->soundPlayer:Lcom/TQFramework/C3SoundEngine;

    invoke-virtual {v0, p0}, Lcom/TQFramework/C3SoundEngine;->unloadEffect(Ljava/lang/String;)V

    .line 97
    return-void
.end method
