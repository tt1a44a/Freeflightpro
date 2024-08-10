.class Lcom/parrot/freeflight/flightdirector/util/SoundtrackManager$DownloadSoundtrackTask;
.super Landroid/os/AsyncTask;
.source "SoundtrackManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/flightdirector/util/SoundtrackManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DownloadSoundtrackTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/parrot/freeflight/flightdirector/data/MusicItem;",
        ">;",
        "Ljava/lang/Void;",
        "Ljava/util/List",
        "<",
        "Lcom/parrot/freeflight/flightdirector/data/MusicItem;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final mListeners:Ljava/util/List;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/flightdirector/util/SoundtrackManager$MediaRequestListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mRunUuid:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field final synthetic this$0:Lcom/parrot/freeflight/flightdirector/util/SoundtrackManager;


# direct methods
.method public constructor <init>(Lcom/parrot/freeflight/flightdirector/util/SoundtrackManager;Ljava/lang/String;Lcom/parrot/freeflight/flightdirector/util/SoundtrackManager$MediaRequestListener;)V
    .locals 1
    .param p1    # Lcom/parrot/freeflight/flightdirector/util/SoundtrackManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "runUuid"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "listener"    # Lcom/parrot/freeflight/flightdirector/util/SoundtrackManager$MediaRequestListener;

    .prologue
    .line 328
    iput-object p1, p0, Lcom/parrot/freeflight/flightdirector/util/SoundtrackManager$DownloadSoundtrackTask;->this$0:Lcom/parrot/freeflight/flightdirector/util/SoundtrackManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 329
    iput-object p2, p0, Lcom/parrot/freeflight/flightdirector/util/SoundtrackManager$DownloadSoundtrackTask;->mRunUuid:Ljava/lang/String;

    .line 330
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/flightdirector/util/SoundtrackManager$DownloadSoundtrackTask;->mListeners:Ljava/util/List;

    .line 331
    invoke-virtual {p0, p3}, Lcom/parrot/freeflight/flightdirector/util/SoundtrackManager$DownloadSoundtrackTask;->addListener(Lcom/parrot/freeflight/flightdirector/util/SoundtrackManager$MediaRequestListener;)V

    .line 332
    return-void
.end method


# virtual methods
.method public addListener(Lcom/parrot/freeflight/flightdirector/util/SoundtrackManager$MediaRequestListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/parrot/freeflight/flightdirector/util/SoundtrackManager$MediaRequestListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .prologue
    .line 336
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/util/SoundtrackManager$DownloadSoundtrackTask;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 337
    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .prologue
    .line 322
    check-cast p1, [Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/flightdirector/util/SoundtrackManager$DownloadSoundtrackTask;->doInBackground([Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected final varargs doInBackground([Ljava/util/List;)Ljava/util/List;
    .locals 11
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/flightdirector/data/MusicItem;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/flightdirector/data/MusicItem;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .prologue
    .local p1, "mediaList":[Ljava/util/List;, "[Ljava/util/List<Lcom/parrot/freeflight/flightdirector/data/MusicItem;>;"
    const/4 v10, 0x0

    .line 344
    aget-object v4, p1, v10

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/parrot/freeflight/flightdirector/data/MusicItem;

    .line 345
    .local v2, "item":Lcom/parrot/freeflight/flightdirector/data/MusicItem;
    invoke-virtual {v2}, Lcom/parrot/freeflight/flightdirector/data/MusicItem;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/parrot/freeflight/flightdirector/util/SoundtrackManager;->getFullMusicPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 347
    .local v3, "musicPath":Ljava/lang/String;
    const/4 v5, 0x0

    :try_start_0
    invoke-static {v3, v5}, Lcom/semantive/waveformandroid/waveform/soundfile/CheapSoundFile;->create(Ljava/lang/String;Lcom/semantive/waveformandroid/waveform/soundfile/CheapSoundFile$ProgressListener;)Lcom/semantive/waveformandroid/waveform/soundfile/CheapSoundFile;

    move-result-object v0

    .line 348
    .local v0, "cheapSoundFile":Lcom/semantive/waveformandroid/waveform/soundfile/CheapSoundFile;
    invoke-virtual {v2, v0}, Lcom/parrot/freeflight/flightdirector/data/MusicItem;->setCheapSoundFile(Lcom/semantive/waveformandroid/waveform/soundfile/CheapSoundFile;)V

    .line 349
    invoke-virtual {v0}, Lcom/semantive/waveformandroid/waveform/soundfile/CheapSoundFile;->getNumFrames()I

    move-result v5

    int-to-double v6, v5

    invoke-virtual {v0}, Lcom/semantive/waveformandroid/waveform/soundfile/CheapSoundFile;->getSamplesPerFrame()I

    move-result v5

    int-to-double v8, v5

    mul-double/2addr v6, v8

    invoke-virtual {v0}, Lcom/semantive/waveformandroid/waveform/soundfile/CheapSoundFile;->getSampleRate()I

    move-result v5

    int-to-double v8, v5

    div-double/2addr v6, v8

    const-wide v8, 0x408f400000000000L    # 1000.0

    mul-double/2addr v6, v8

    invoke-virtual {v2, v6, v7}, Lcom/parrot/freeflight/flightdirector/data/MusicItem;->setDuration(D)V

    .line 350
    const-wide/16 v6, 0x0

    invoke-virtual {v2, v6, v7}, Lcom/parrot/freeflight/flightdirector/data/MusicItem;->setStartTime(D)V

    .line 351
    iget-object v5, p0, Lcom/parrot/freeflight/flightdirector/util/SoundtrackManager$DownloadSoundtrackTask;->this$0:Lcom/parrot/freeflight/flightdirector/util/SoundtrackManager;

    invoke-static {v5}, Lcom/parrot/freeflight/flightdirector/util/SoundtrackManager;->access$000(Lcom/parrot/freeflight/flightdirector/util/SoundtrackManager;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/parrot/freeflight/flightdirector/util/SettingsParamsBuilder;->getInstance(Landroid/content/Context;)Lcom/parrot/freeflight/flightdirector/util/SettingsParamsBuilder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/parrot/freeflight/flightdirector/util/SettingsParamsBuilder;->getDuration()I

    move-result v5

    mul-int/lit16 v5, v5, 0x3e8

    int-to-double v6, v5

    invoke-virtual {v2, v6, v7}, Lcom/parrot/freeflight/flightdirector/data/MusicItem;->setEndTime(D)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 352
    .end local v0    # "cheapSoundFile":Lcom/semantive/waveformandroid/waveform/soundfile/CheapSoundFile;
    :catch_0
    move-exception v1

    .line 354
    .local v1, "e":Ljava/lang/Exception;
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Lcom/parrot/freeflight/flightdirector/data/MusicItem;->setOnError(Z)V

    goto :goto_0

    .line 358
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "item":Lcom/parrot/freeflight/flightdirector/data/MusicItem;
    .end local v3    # "musicPath":Ljava/lang/String;
    :cond_0
    aget-object v4, p1, v10

    return-object v4
.end method

.method protected onCancelled()V
    .locals 3
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .prologue
    .line 376
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 377
    iget-object v1, p0, Lcom/parrot/freeflight/flightdirector/util/SoundtrackManager$DownloadSoundtrackTask;->mListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/flightdirector/util/SoundtrackManager$MediaRequestListener;

    .line 378
    .local v0, "listener":Lcom/parrot/freeflight/flightdirector/util/SoundtrackManager$MediaRequestListener;
    const-string v2, ""

    invoke-virtual {v0, v2}, Lcom/parrot/freeflight/flightdirector/util/SoundtrackManager$MediaRequestListener;->onError(Ljava/lang/String;)V

    goto :goto_0

    .line 381
    .end local v0    # "listener":Lcom/parrot/freeflight/flightdirector/util/SoundtrackManager$MediaRequestListener;
    :cond_0
    iget-object v1, p0, Lcom/parrot/freeflight/flightdirector/util/SoundtrackManager$DownloadSoundtrackTask;->mListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 382
    iget-object v1, p0, Lcom/parrot/freeflight/flightdirector/util/SoundtrackManager$DownloadSoundtrackTask;->this$0:Lcom/parrot/freeflight/flightdirector/util/SoundtrackManager;

    invoke-static {v1}, Lcom/parrot/freeflight/flightdirector/util/SoundtrackManager;->access$200(Lcom/parrot/freeflight/flightdirector/util/SoundtrackManager;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/flightdirector/util/SoundtrackManager$DownloadSoundtrackTask;->mRunUuid:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .prologue
    .line 322
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/flightdirector/util/SoundtrackManager$DownloadSoundtrackTask;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 3
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/flightdirector/data/MusicItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 364
    .local p1, "musicItems":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/flightdirector/data/MusicItem;>;"
    iget-object v1, p0, Lcom/parrot/freeflight/flightdirector/util/SoundtrackManager$DownloadSoundtrackTask;->this$0:Lcom/parrot/freeflight/flightdirector/util/SoundtrackManager;

    invoke-static {v1}, Lcom/parrot/freeflight/flightdirector/util/SoundtrackManager;->access$100(Lcom/parrot/freeflight/flightdirector/util/SoundtrackManager;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/flightdirector/util/SoundtrackManager$DownloadSoundtrackTask;->mRunUuid:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    iget-object v1, p0, Lcom/parrot/freeflight/flightdirector/util/SoundtrackManager$DownloadSoundtrackTask;->mListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/flightdirector/util/SoundtrackManager$MediaRequestListener;

    .line 366
    .local v0, "listener":Lcom/parrot/freeflight/flightdirector/util/SoundtrackManager$MediaRequestListener;
    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/flightdirector/util/SoundtrackManager$MediaRequestListener;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0

    .line 369
    .end local v0    # "listener":Lcom/parrot/freeflight/flightdirector/util/SoundtrackManager$MediaRequestListener;
    :cond_0
    iget-object v1, p0, Lcom/parrot/freeflight/flightdirector/util/SoundtrackManager$DownloadSoundtrackTask;->mListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 370
    iget-object v1, p0, Lcom/parrot/freeflight/flightdirector/util/SoundtrackManager$DownloadSoundtrackTask;->this$0:Lcom/parrot/freeflight/flightdirector/util/SoundtrackManager;

    invoke-static {v1}, Lcom/parrot/freeflight/flightdirector/util/SoundtrackManager;->access$200(Lcom/parrot/freeflight/flightdirector/util/SoundtrackManager;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/flightdirector/util/SoundtrackManager$DownloadSoundtrackTask;->mRunUuid:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    return-void
.end method
