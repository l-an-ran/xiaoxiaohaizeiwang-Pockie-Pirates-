.class public Lcom/TQFramework/C3MusicEngine;
.super Ljava/lang/Object;
.source "C3MusicEngine.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "C3MusicEngine"


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

.field private mCurrentPath:Ljava/lang/String;

.field private mIsMute:Z

.field private mIsPaused:Z

.field private mLeftVolume:F

.field private mPreVolume:I

.field private mRightVolume:F

.field private sResourcePath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x3

    const/4 v1, 0x0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/TQFramework/C3MusicEngine;->mAudioManager:Landroid/media/AudioManager;

    .line 17
    iput-boolean v1, p0, Lcom/TQFramework/C3MusicEngine;->mIsMute:Z

    .line 18
    iput v1, p0, Lcom/TQFramework/C3MusicEngine;->mPreVolume:I

    .line 26
    invoke-direct {p0}, Lcom/TQFramework/C3MusicEngine;->initData()V

    .line 28
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/TQFramework/C3MusicEngine;->mAudioManager:Landroid/media/AudioManager;

    .line 29
    iget-object v0, p0, Lcom/TQFramework/C3MusicEngine;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/TQFramework/C3MusicEngine;->mIsMute:Z

    .line 30
    iget-object v0, p0, Lcom/TQFramework/C3MusicEngine;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iput v0, p0, Lcom/TQFramework/C3MusicEngine;->mPreVolume:I

    .line 31
    iget-object v0, p0, Lcom/TQFramework/C3MusicEngine;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v2, v1}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    .line 32
    return-void

    :cond_0
    move v0, v1

    .line 29
    goto :goto_0
.end method

.method private createMediaplayerFromPath(Ljava/lang/String;)Landroid/media/MediaPlayer;
    .locals 10
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 200
    const/4 v4, 0x0

    .line 203
    .local v4, "mediaPlayer":Landroid/media/MediaPlayer;
    :try_start_0
    new-instance v5, Landroid/media/MediaPlayer;

    invoke-direct {v5}, Landroid/media/MediaPlayer;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    .end local v4    # "mediaPlayer":Landroid/media/MediaPlayer;
    .local v5, "mediaPlayer":Landroid/media/MediaPlayer;
    const/4 v6, 0x3

    :try_start_1
    invoke-virtual {v5, v6}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 205
    new-instance v6, Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/TQFramework/C3MusicEngine;->sResourcePath:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 206
    invoke-virtual {v5}, Landroid/media/MediaPlayer;->prepare()V

    .line 209
    iget-object v6, p0, Lcom/TQFramework/C3MusicEngine;->mAudioManager:Landroid/media/AudioManager;

    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v3

    .line 210
    .local v3, "maxVolume":I
    iget-object v6, p0, Lcom/TQFramework/C3MusicEngine;->mAudioManager:Landroid/media/AudioManager;

    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    .line 211
    .local v0, "CurVolume":I
    int-to-float v6, v0

    int-to-float v7, v3

    div-float/2addr v6, v7

    iput v6, p0, Lcom/TQFramework/C3MusicEngine;->mRightVolume:F

    iput v6, p0, Lcom/TQFramework/C3MusicEngine;->mLeftVolume:F

    .line 212
    iget v6, p0, Lcom/TQFramework/C3MusicEngine;->mLeftVolume:F

    iget v7, p0, Lcom/TQFramework/C3MusicEngine;->mRightVolume:F

    add-float/2addr v6, v7

    const/high16 v7, 0x40000000    # 2.0f

    div-float v2, v6, v7

    .line 213
    .local v2, "fVolume":F
    iget-object v6, p0, Lcom/TQFramework/C3MusicEngine;->mAudioManager:Landroid/media/AudioManager;

    const/4 v7, 0x3

    int-to-float v8, v3

    mul-float/2addr v8, v2

    float-to-int v8, v8

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, v9}, Landroid/media/AudioManager;->setStreamVolume(III)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v4, v5

    .line 219
    .end local v0    # "CurVolume":I
    .end local v2    # "fVolume":F
    .end local v3    # "maxVolume":I
    .end local v5    # "mediaPlayer":Landroid/media/MediaPlayer;
    .restart local v4    # "mediaPlayer":Landroid/media/MediaPlayer;
    :goto_0
    return-object v4

    .line 214
    :catch_0
    move-exception v1

    .line 215
    .local v1, "e":Ljava/lang/Exception;
    :goto_1
    const/4 v4, 0x0

    .line 216
    const-string v6, "C3MusicEngine"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "error: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 214
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v4    # "mediaPlayer":Landroid/media/MediaPlayer;
    .restart local v5    # "mediaPlayer":Landroid/media/MediaPlayer;
    :catch_1
    move-exception v1

    move-object v4, v5

    .end local v5    # "mediaPlayer":Landroid/media/MediaPlayer;
    .restart local v4    # "mediaPlayer":Landroid/media/MediaPlayer;
    goto :goto_1
.end method

.method private initData()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/high16 v0, 0x3f000000    # 0.5f

    .line 187
    iput v0, p0, Lcom/TQFramework/C3MusicEngine;->mLeftVolume:F

    .line 188
    iput v0, p0, Lcom/TQFramework/C3MusicEngine;->mRightVolume:F

    .line 189
    iput-object v1, p0, Lcom/TQFramework/C3MusicEngine;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    .line 190
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/TQFramework/C3MusicEngine;->mIsPaused:Z

    .line 191
    iput-object v1, p0, Lcom/TQFramework/C3MusicEngine;->mCurrentPath:Ljava/lang/String;

    .line 192
    return-void
.end method


# virtual methods
.method public SetResPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "sResPath"    # Ljava/lang/String;

    .prologue
    .line 22
    iput-object p1, p0, Lcom/TQFramework/C3MusicEngine;->sResourcePath:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public end()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 145
    iget-object v0, p0, Lcom/TQFramework/C3MusicEngine;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/TQFramework/C3MusicEngine;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 149
    :cond_0
    invoke-direct {p0}, Lcom/TQFramework/C3MusicEngine;->initData()V

    .line 151
    iget-object v0, p0, Lcom/TQFramework/C3MusicEngine;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Lcom/TQFramework/C3MusicEngine;->mPreVolume:I

    const/4 v2, 0x0

    invoke-virtual {v0, v3, v1, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 152
    iget-boolean v0, p0, Lcom/TQFramework/C3MusicEngine;->mIsMute:Z

    if-eqz v0, :cond_1

    .line 153
    iget-object v0, p0, Lcom/TQFramework/C3MusicEngine;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v3, v1}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    .line 155
    :cond_1
    return-void
.end method

.method public getBackgroundVolume()F
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 158
    iget-object v2, p0, Lcom/TQFramework/C3MusicEngine;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    .line 159
    .local v1, "maxVolume":I
    iget-object v2, p0, Lcom/TQFramework/C3MusicEngine;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    .line 160
    .local v0, "CurVolume":I
    int-to-float v2, v0

    int-to-float v3, v1

    div-float/2addr v2, v3

    iput v2, p0, Lcom/TQFramework/C3MusicEngine;->mRightVolume:F

    iput v2, p0, Lcom/TQFramework/C3MusicEngine;->mLeftVolume:F

    .line 161
    iget-object v2, p0, Lcom/TQFramework/C3MusicEngine;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_0

    .line 162
    iget v2, p0, Lcom/TQFramework/C3MusicEngine;->mLeftVolume:F

    iget v3, p0, Lcom/TQFramework/C3MusicEngine;->mRightVolume:F

    add-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    .line 164
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isBackgroundMusicPlaying()Z
    .locals 2

    .prologue
    .line 133
    const/4 v0, 0x0

    .line 135
    .local v0, "ret":Z
    iget-object v1, p0, Lcom/TQFramework/C3MusicEngine;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v1, :cond_0

    .line 136
    const/4 v0, 0x0

    .line 141
    :goto_0
    return v0

    .line 138
    :cond_0
    iget-object v1, p0, Lcom/TQFramework/C3MusicEngine;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    goto :goto_0
.end method

.method public pauseBackgroundMusic()V
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/TQFramework/C3MusicEngine;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/TQFramework/C3MusicEngine;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/TQFramework/C3MusicEngine;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 105
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/TQFramework/C3MusicEngine;->mIsPaused:Z

    .line 107
    :cond_0
    return-void
.end method

.method public playBackgroundMusic(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "isLoop"    # Z

    .prologue
    .line 51
    iget-object v1, p0, Lcom/TQFramework/C3MusicEngine;->mCurrentPath:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 54
    invoke-direct {p0, p1}, Lcom/TQFramework/C3MusicEngine;->createMediaplayerFromPath(Ljava/lang/String;)Landroid/media/MediaPlayer;

    move-result-object v1

    iput-object v1, p0, Lcom/TQFramework/C3MusicEngine;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    .line 55
    iput-object p1, p0, Lcom/TQFramework/C3MusicEngine;->mCurrentPath:Ljava/lang/String;

    .line 72
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/TQFramework/C3MusicEngine;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v1, :cond_3

    .line 73
    const-string v1, "C3MusicEngine"

    const-string v2, "playBackgroundMusic: background media player is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    :goto_1
    return-void

    .line 58
    :cond_1
    iget-object v1, p0, Lcom/TQFramework/C3MusicEngine;->mCurrentPath:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 62
    iget-object v1, p0, Lcom/TQFramework/C3MusicEngine;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_2

    .line 63
    iget-object v1, p0, Lcom/TQFramework/C3MusicEngine;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 65
    :cond_2
    invoke-direct {p0, p1}, Lcom/TQFramework/C3MusicEngine;->createMediaplayerFromPath(Ljava/lang/String;)Landroid/media/MediaPlayer;

    move-result-object v1

    iput-object v1, p0, Lcom/TQFramework/C3MusicEngine;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    .line 68
    iput-object p1, p0, Lcom/TQFramework/C3MusicEngine;->mCurrentPath:Ljava/lang/String;

    goto :goto_0

    .line 76
    :cond_3
    iget-object v1, p0, Lcom/TQFramework/C3MusicEngine;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V

    .line 78
    iget-object v1, p0, Lcom/TQFramework/C3MusicEngine;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p2}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 81
    :try_start_0
    iget-object v1, p0, Lcom/TQFramework/C3MusicEngine;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V

    .line 82
    iget-object v1, p0, Lcom/TQFramework/C3MusicEngine;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 83
    iget-object v1, p0, Lcom/TQFramework/C3MusicEngine;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    .line 85
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/TQFramework/C3MusicEngine;->mIsPaused:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 86
    :catch_0
    move-exception v0

    .line 87
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "C3MusicEngine"

    const-string v2, "playBackgroundMusic: error state"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public preloadBackgroundMusic(Ljava/lang/String;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/TQFramework/C3MusicEngine;->mCurrentPath:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/TQFramework/C3MusicEngine;->mCurrentPath:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/TQFramework/C3MusicEngine;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 40
    iget-object v0, p0, Lcom/TQFramework/C3MusicEngine;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 43
    :cond_1
    invoke-direct {p0, p1}, Lcom/TQFramework/C3MusicEngine;->createMediaplayerFromPath(Ljava/lang/String;)Landroid/media/MediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/TQFramework/C3MusicEngine;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    .line 46
    iput-object p1, p0, Lcom/TQFramework/C3MusicEngine;->mCurrentPath:Ljava/lang/String;

    .line 48
    :cond_2
    return-void
.end method

.method public resumeBackgroundMusic()V
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/TQFramework/C3MusicEngine;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/TQFramework/C3MusicEngine;->mIsPaused:Z

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/TQFramework/C3MusicEngine;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 112
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/TQFramework/C3MusicEngine;->mIsPaused:Z

    .line 114
    :cond_0
    return-void
.end method

.method public rewindBackgroundMusic()V
    .locals 3

    .prologue
    .line 117
    iget-object v1, p0, Lcom/TQFramework/C3MusicEngine;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    .line 118
    iget-object v1, p0, Lcom/TQFramework/C3MusicEngine;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V

    .line 121
    :try_start_0
    iget-object v1, p0, Lcom/TQFramework/C3MusicEngine;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V

    .line 122
    iget-object v1, p0, Lcom/TQFramework/C3MusicEngine;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 123
    iget-object v1, p0, Lcom/TQFramework/C3MusicEngine;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    .line 125
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/TQFramework/C3MusicEngine;->mIsPaused:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    :cond_0
    :goto_0
    return-void

    .line 126
    :catch_0
    move-exception v0

    .line 127
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "C3MusicEngine"

    const-string v2, "rewindBackgroundMusic: error state"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setBackgroundVolume(F)V
    .locals 5
    .param p1, "volume"    # F

    .prologue
    const/4 v4, 0x3

    .line 169
    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr p1, v1

    .line 170
    const/4 v1, 0x0

    cmpg-float v1, p1, v1

    if-gez v1, :cond_0

    .line 171
    const/4 p1, 0x0

    .line 174
    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v1

    if-lez v1, :cond_1

    .line 175
    const/high16 p1, 0x3f800000    # 1.0f

    .line 178
    :cond_1
    iput p1, p0, Lcom/TQFramework/C3MusicEngine;->mRightVolume:F

    iput p1, p0, Lcom/TQFramework/C3MusicEngine;->mLeftVolume:F

    .line 179
    iget-object v1, p0, Lcom/TQFramework/C3MusicEngine;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_2

    .line 180
    iget-object v1, p0, Lcom/TQFramework/C3MusicEngine;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v4}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    .line 181
    .local v0, "maxVolume":I
    iget-object v1, p0, Lcom/TQFramework/C3MusicEngine;->mAudioManager:Landroid/media/AudioManager;

    int-to-float v2, v0

    mul-float/2addr v2, p1

    float-to-int v2, v2

    const/4 v3, 0x0

    invoke-virtual {v1, v4, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 184
    .end local v0    # "maxVolume":I
    :cond_2
    return-void
.end method

.method public stopBackgroundMusic()V
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/TQFramework/C3MusicEngine;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/TQFramework/C3MusicEngine;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 98
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/TQFramework/C3MusicEngine;->mIsPaused:Z

    .line 100
    :cond_0
    return-void
.end method
