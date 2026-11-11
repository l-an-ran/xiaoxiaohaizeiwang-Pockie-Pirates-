.class public Lcom/TQFramework/C3SoundEngine;
.super Ljava/lang/Object;
.source "C3SoundEngine.java"


# static fields
.field private static final MAX_SIMULTANEOUS_STREAMS_DEFAULT:I = 0x5

.field private static final SOUND_PRIORITY:I = 0x1

.field private static final SOUND_QUALITY:I = 0x5

.field private static final SOUND_RATE:F = 1.0f

.field private static final TAG:Ljava/lang/String; = "C3SoundEngine"


# instance fields
.field private final INVALID_SOUND_ID:I

.field private final INVALID_STREAM_ID:I

.field private mAudioManager:Landroid/media/AudioManager;

.field private mLeftVolume:F

.field private mPathSoundIDMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mRightVolume:F

.field private mSoundIdStreamIdMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSoundPool:Landroid/media/SoundPool;

.field private sResourcePath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, -0x1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/TQFramework/C3SoundEngine;->mAudioManager:Landroid/media/AudioManager;

    .line 31
    iput v1, p0, Lcom/TQFramework/C3SoundEngine;->INVALID_SOUND_ID:I

    .line 32
    iput v1, p0, Lcom/TQFramework/C3SoundEngine;->INVALID_STREAM_ID:I

    .line 35
    invoke-direct {p0}, Lcom/TQFramework/C3SoundEngine;->initData()V

    .line 37
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/TQFramework/C3SoundEngine;->mAudioManager:Landroid/media/AudioManager;

    .line 38
    return-void
.end method

.method static synthetic access$0(Lcom/TQFramework/C3SoundEngine;)Landroid/media/SoundPool;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/TQFramework/C3SoundEngine;->mSoundPool:Landroid/media/SoundPool;

    return-object v0
.end method

.method static synthetic access$1(Lcom/TQFramework/C3SoundEngine;)F
    .locals 1

    .prologue
    .line 16
    iget v0, p0, Lcom/TQFramework/C3SoundEngine;->mLeftVolume:F

    return v0
.end method

.method static synthetic access$2(Lcom/TQFramework/C3SoundEngine;)F
    .locals 1

    .prologue
    .line 17
    iget v0, p0, Lcom/TQFramework/C3SoundEngine;->mRightVolume:F

    return v0
.end method

.method static synthetic access$3(Lcom/TQFramework/C3SoundEngine;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/TQFramework/C3SoundEngine;->mSoundIdStreamIdMap:Ljava/util/HashMap;

    return-object v0
.end method

.method private createSoundIdFromPath(Ljava/lang/String;)I
    .locals 5
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 199
    const/4 v1, -0x1

    .line 202
    .local v1, "soundId":I
    :try_start_0
    iget-object v2, p0, Lcom/TQFramework/C3SoundEngine;->mSoundPool:Landroid/media/SoundPool;

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/TQFramework/C3SoundEngine;->sResourcePath:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 207
    :goto_0
    return v1

    .line 203
    :catch_0
    move-exception v0

    .line 204
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "C3SoundEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "error: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private initData()V
    .locals 4

    .prologue
    const/4 v3, 0x5

    const/high16 v2, 0x3f000000    # 0.5f

    .line 211
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/TQFramework/C3SoundEngine;->mSoundIdStreamIdMap:Ljava/util/HashMap;

    .line 212
    new-instance v0, Landroid/media/SoundPool;

    const/4 v1, 0x3

    invoke-direct {v0, v3, v1, v3}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lcom/TQFramework/C3SoundEngine;->mSoundPool:Landroid/media/SoundPool;

    .line 213
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/TQFramework/C3SoundEngine;->mPathSoundIDMap:Ljava/util/HashMap;

    .line 215
    iput v2, p0, Lcom/TQFramework/C3SoundEngine;->mLeftVolume:F

    .line 216
    iput v2, p0, Lcom/TQFramework/C3SoundEngine;->mRightVolume:F

    .line 217
    return-void
.end method

.method private pauseOrResumeAllEffects(Z)V
    .locals 4
    .param p1, "isPause"    # Z

    .prologue
    .line 221
    iget-object v3, p0, Lcom/TQFramework/C3SoundEngine;->mSoundIdStreamIdMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 222
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 231
    return-void

    .line 223
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 224
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 225
    .local v2, "soundId":I
    if-eqz p1, :cond_1

    .line 226
    invoke-virtual {p0, v2}, Lcom/TQFramework/C3SoundEngine;->pauseEffect(I)V

    goto :goto_0

    .line 228
    :cond_1
    invoke-virtual {p0, v2}, Lcom/TQFramework/C3SoundEngine;->resumeEffect(I)V

    goto :goto_0
.end method


# virtual methods
.method public SetResPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "sResPath"    # Ljava/lang/String;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/TQFramework/C3SoundEngine;->sResourcePath:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public end()V
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/TQFramework/C3SoundEngine;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 192
    iget-object v0, p0, Lcom/TQFramework/C3SoundEngine;->mPathSoundIDMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 193
    iget-object v0, p0, Lcom/TQFramework/C3SoundEngine;->mSoundIdStreamIdMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 195
    invoke-direct {p0}, Lcom/TQFramework/C3SoundEngine;->initData()V

    .line 196
    return-void
.end method

.method public getEffectsVolume()F
    .locals 2

    .prologue
    .line 166
    iget v0, p0, Lcom/TQFramework/C3SoundEngine;->mLeftVolume:F

    iget v1, p0, Lcom/TQFramework/C3SoundEngine;->mRightVolume:F

    add-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public pauseAllEffects()V
    .locals 1

    .prologue
    .line 147
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/TQFramework/C3SoundEngine;->pauseOrResumeAllEffects(Z)V

    .line 148
    return-void
.end method

.method public pauseEffect(I)V
    .locals 3
    .param p1, "soundId"    # I

    .prologue
    .line 128
    iget-object v1, p0, Lcom/TQFramework/C3SoundEngine;->mSoundIdStreamIdMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 130
    .local v0, "streamId":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 131
    iget-object v1, p0, Lcom/TQFramework/C3SoundEngine;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/media/SoundPool;->pause(I)V

    .line 132
    iget-object v1, p0, Lcom/TQFramework/C3SoundEngine;->mPathSoundIDMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    :cond_0
    return-void
.end method

.method public playEffect(Ljava/lang/String;Z)I
    .locals 11
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "isLoop"    # Z

    .prologue
    const/4 v5, -0x1

    .line 79
    iget-object v0, p0, Lcom/TQFramework/C3SoundEngine;->mPathSoundIDMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .line 81
    .local v8, "soundId":Ljava/lang/Integer;
    if-eqz v8, :cond_2

    .line 84
    iget-object v0, p0, Lcom/TQFramework/C3SoundEngine;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->stop(I)V

    .line 87
    iget-object v0, p0, Lcom/TQFramework/C3SoundEngine;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget v2, p0, Lcom/TQFramework/C3SoundEngine;->mLeftVolume:F

    .line 88
    iget v3, p0, Lcom/TQFramework/C3SoundEngine;->mRightVolume:F

    const/4 v4, 0x1

    if-eqz p2, :cond_1

    :goto_0
    const/high16 v6, 0x3f800000    # 1.0f

    .line 87
    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v10

    .line 91
    .local v10, "streamId":I
    iget-object v0, p0, Lcom/TQFramework/C3SoundEngine;->mSoundIdStreamIdMap:Ljava/util/HashMap;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    .end local v10    # "streamId":I
    :goto_1
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v5

    :cond_0
    return v5

    .line 88
    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    .line 94
    :cond_2
    invoke-virtual {p0, p1}, Lcom/TQFramework/C3SoundEngine;->preloadEffect(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 95
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v5, :cond_0

    .line 99
    move-object v9, v8

    .line 100
    .local v9, "soundIdnew":Ljava/lang/Integer;
    move v7, p2

    .line 101
    .local v7, "isLoopnew":Z
    iget-object v0, p0, Lcom/TQFramework/C3SoundEngine;->mSoundPool:Landroid/media/SoundPool;

    new-instance v1, Lcom/TQFramework/C3SoundEngine$1;

    invoke-direct {v1, p0, v9, v7}, Lcom/TQFramework/C3SoundEngine$1;-><init>(Lcom/TQFramework/C3SoundEngine;Ljava/lang/Integer;Z)V

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    goto :goto_1
.end method

.method public preloadEffect(Ljava/lang/String;)I
    .locals 4
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v3, -0x1

    .line 45
    const/4 v0, -0x1

    .line 48
    .local v0, "soundId":I
    iget-object v1, p0, Lcom/TQFramework/C3SoundEngine;->mPathSoundIDMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 49
    iget-object v1, p0, Lcom/TQFramework/C3SoundEngine;->mPathSoundIDMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 62
    :cond_0
    :goto_0
    return v0

    .line 51
    :cond_1
    invoke-direct {p0, p1}, Lcom/TQFramework/C3SoundEngine;->createSoundIdFromPath(Ljava/lang/String;)I

    move-result v0

    .line 53
    if-eq v0, v3, :cond_0

    .line 55
    iget-object v1, p0, Lcom/TQFramework/C3SoundEngine;->mSoundIdStreamIdMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    iget-object v1, p0, Lcom/TQFramework/C3SoundEngine;->mPathSoundIDMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public resumeAllEffects()V
    .locals 1

    .prologue
    .line 152
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/TQFramework/C3SoundEngine;->pauseOrResumeAllEffects(Z)V

    .line 153
    return-void
.end method

.method public resumeEffect(I)V
    .locals 3
    .param p1, "soundId"    # I

    .prologue
    .line 137
    iget-object v1, p0, Lcom/TQFramework/C3SoundEngine;->mSoundIdStreamIdMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 139
    .local v0, "streamId":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 140
    iget-object v1, p0, Lcom/TQFramework/C3SoundEngine;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/media/SoundPool;->resume(I)V

    .line 141
    iget-object v1, p0, Lcom/TQFramework/C3SoundEngine;->mPathSoundIDMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    :cond_0
    return-void
.end method

.method public setEffectsVolume(F)V
    .locals 6
    .param p1, "volume"    # F

    .prologue
    .line 172
    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr p1, v2

    .line 173
    const/4 v2, 0x0

    cmpg-float v2, p1, v2

    if-gez v2, :cond_0

    .line 174
    const/4 p1, 0x0

    .line 176
    :cond_0
    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, p1, v2

    if-lez v2, :cond_1

    .line 177
    const/high16 p1, 0x3f800000    # 1.0f

    .line 180
    :cond_1
    iput p1, p0, Lcom/TQFramework/C3SoundEngine;->mRightVolume:F

    iput p1, p0, Lcom/TQFramework/C3SoundEngine;->mLeftVolume:F

    .line 183
    iget-object v2, p0, Lcom/TQFramework/C3SoundEngine;->mSoundIdStreamIdMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 184
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 188
    return-void

    .line 185
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 186
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v3, p0, Lcom/TQFramework/C3SoundEngine;->mSoundPool:Landroid/media/SoundPool;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget v4, p0, Lcom/TQFramework/C3SoundEngine;->mLeftVolume:F

    iget v5, p0, Lcom/TQFramework/C3SoundEngine;->mRightVolume:F

    invoke-virtual {v3, v2, v4, v5}, Landroid/media/SoundPool;->setVolume(IFF)V

    goto :goto_0
.end method

.method public stopAllEffects()V
    .locals 4

    .prologue
    .line 157
    iget-object v3, p0, Lcom/TQFramework/C3SoundEngine;->mSoundIdStreamIdMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 158
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 163
    return-void

    .line 159
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 160
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 161
    .local v2, "soundId":I
    invoke-virtual {p0, v2}, Lcom/TQFramework/C3SoundEngine;->stopEffect(I)V

    goto :goto_0
.end method

.method public stopEffect(I)V
    .locals 3
    .param p1, "soundId"    # I

    .prologue
    .line 119
    iget-object v1, p0, Lcom/TQFramework/C3SoundEngine;->mSoundIdStreamIdMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 121
    .local v0, "streamId":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 122
    iget-object v1, p0, Lcom/TQFramework/C3SoundEngine;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/media/SoundPool;->stop(I)V

    .line 123
    iget-object v1, p0, Lcom/TQFramework/C3SoundEngine;->mPathSoundIDMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    :cond_0
    return-void
.end method

.method public unloadEffect(Ljava/lang/String;)V
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 67
    iget-object v1, p0, Lcom/TQFramework/C3SoundEngine;->mPathSoundIDMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 69
    .local v0, "soundId":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 71
    iget-object v1, p0, Lcom/TQFramework/C3SoundEngine;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/media/SoundPool;->unload(I)Z

    .line 74
    iget-object v1, p0, Lcom/TQFramework/C3SoundEngine;->mSoundIdStreamIdMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    :cond_0
    return-void
.end method
