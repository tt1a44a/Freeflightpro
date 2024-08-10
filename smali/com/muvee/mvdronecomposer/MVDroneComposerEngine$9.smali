.class Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$9;
.super Landroid/os/AsyncTask;
.source "MVDroneComposerEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->startMvFlightAnalyser(Landroid/content/Context;Lcom/muvee/mvdronecomposer/SettingsParam;Lcom/muvee/mvdronecomposer/MVFlightAnalyserCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/muvee/mvdronecomposer/MVFlightAnalyserCallBack;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:F

.field final synthetic e:Lcom/muvee/mvdronecomposer/SettingsParam;

.field final synthetic f:Ljava/util/ArrayList;

.field final synthetic g:Ljava/lang/String;

.field final synthetic h:Ljava/lang/String;

.field final synthetic i:I

.field final synthetic j:I

.field final synthetic k:Z

.field final synthetic l:Z

.field final synthetic m:Z

.field final synthetic n:Z

.field final synthetic o:Z

.field final synthetic p:Z

.field final synthetic q:Z

.field final synthetic r:Landroid/content/Context;

.field final synthetic s:Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;


# direct methods
.method constructor <init>(Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;ILcom/muvee/mvdronecomposer/MVFlightAnalyserCallBack;Ljava/lang/String;FLcom/muvee/mvdronecomposer/SettingsParam;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;IIZZZZZZZLandroid/content/Context;)V
    .locals 1

    .prologue
    .line 1405
    iput-object p1, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$9;->s:Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;

    iput p2, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$9;->a:I

    iput-object p3, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$9;->b:Lcom/muvee/mvdronecomposer/MVFlightAnalyserCallBack;

    iput-object p4, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$9;->c:Ljava/lang/String;

    iput p5, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$9;->d:F

    iput-object p6, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$9;->e:Lcom/muvee/mvdronecomposer/SettingsParam;

    iput-object p7, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$9;->f:Ljava/util/ArrayList;

    iput-object p8, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$9;->g:Ljava/lang/String;

    iput-object p9, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$9;->h:Ljava/lang/String;

    iput p10, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$9;->i:I

    iput p11, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$9;->j:I

    iput-boolean p12, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$9;->k:Z

    iput-boolean p13, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$9;->l:Z

    iput-boolean p14, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$9;->m:Z

    move/from16 v0, p15

    iput-boolean v0, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$9;->n:Z

    move/from16 v0, p16

    iput-boolean v0, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$9;->o:Z

    move/from16 v0, p17

    iput-boolean v0, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$9;->p:Z

    move/from16 v0, p18

    iput-boolean v0, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$9;->q:Z

    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$9;->r:Landroid/content/Context;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 18

    .prologue
    .line 1426
    invoke-static {}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->a()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "::startMvFlightAnalyser:: doInBackground() startedDoInBackground: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$9;->s:Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;

    invoke-static {v4}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->e(Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1428
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$9;->s:Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->b(Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;Z)Z

    .line 1430
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$9;->s:Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$9;->c:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$9;->d:F

    invoke-virtual {v2, v3, v4}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->setMusicItem(Ljava/lang/String;F)V

    .line 1433
    sget-object v2, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->currentSettingsParam:Lcom/muvee/mvdronecomposer/SettingsParam;

    if-eqz v2, :cond_0

    .line 1434
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$9;->s:Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$9;->e:Lcom/muvee/mvdronecomposer/SettingsParam;

    invoke-virtual {v2, v3}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->checkForReanalysis(Lcom/muvee/mvdronecomposer/SettingsParam;)V

    .line 1437
    sget-object v2, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->currentSettingsParam:Lcom/muvee/mvdronecomposer/SettingsParam;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->currentSettingsParam:Lcom/muvee/mvdronecomposer/SettingsParam;

    invoke-virtual {v2}, Lcom/muvee/mvdronecomposer/SettingsParam;->isDisableCredit()Z

    move-result v2

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$9;->s:Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;

    invoke-static {v2}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->h(Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$9;->s:Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;

    invoke-static {v2}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->h(Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 1438
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$9;->s:Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;

    invoke-static {v2}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->h(Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;)Ljava/util/ArrayList;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$9;->s:Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;

    invoke-static {v3}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->h(Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1443
    :cond_0
    new-instance v2, Lcom/muvee/mvdronecomposer/SettingsParam;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$9;->f:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$9;->g:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$9;->h:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$9;->i:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$9;->j:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$9;->a:I

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$9;->c:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v10, v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$9;->d:F

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$9;->k:Z

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$9;->l:Z

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$9;->m:Z

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$9;->n:Z

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$9;->o:Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$9;->p:Z

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$9;->q:Z

    move/from16 v17, v0

    invoke-direct/range {v2 .. v17}, Lcom/muvee/mvdronecomposer/SettingsParam;-><init>(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;FZZZZZZZ)V

    sput-object v2, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->currentSettingsParam:Lcom/muvee/mvdronecomposer/SettingsParam;

    .line 1446
    invoke-static {}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, "::startMvFlightAnalyser:: doInBackground() onStart() called"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1447
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$9;->b:Lcom/muvee/mvdronecomposer/MVFlightAnalyserCallBack;

    invoke-interface {v2}, Lcom/muvee/mvdronecomposer/MVFlightAnalyserCallBack;->onStart()V

    .line 1451
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$9;->s:Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;

    invoke-static {v2}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->i(Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1452
    new-instance v9, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "MVDroneComposer"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "temp.mmd"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v9, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1453
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 1455
    new-instance v2, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v2}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 1456
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$9;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 1458
    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 1460
    new-instance v4, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    const/4 v3, 0x0

    invoke-direct {v4, v3, v2}, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;-><init>(II)V

    .line 1461
    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    const/4 v3, 0x0

    invoke-direct {v5, v3, v2}, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;-><init>(II)V

    .line 1463
    new-instance v2, Lcom/muvee/dsg/mmap/api/videoeditor/MusicDescriptor;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$9;->c:Ljava/lang/String;

    const/16 v6, 0x64

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v8}, Lcom/muvee/dsg/mmap/api/videoeditor/MusicDescriptor;-><init>(Ljava/lang/String;Lcom/muvee/dsg/mmap/api/videoeditor/Interval;Lcom/muvee/dsg/mmap/api/videoeditor/Interval;III)V

    .line 1464
    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/MusicDescriptor;->mediaAnalysisDataPath:Ljava/lang/String;

    .line 1466
    new-instance v3, Lcom/muvee/dsg/mmap/api/musicanalayzer/MusicAnalyzer;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/musicanalayzer/MusicAnalyzer;-><init>()V

    .line 1468
    const/4 v4, 0x1

    new-array v4, v4, [Lcom/muvee/dsg/mmap/api/videoeditor/MusicDescriptor;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-virtual {v3, v4}, Lcom/muvee/dsg/mmap/api/musicanalayzer/MusicAnalyzer;->setMusic([Lcom/muvee/dsg/mmap/api/videoeditor/MusicDescriptor;)V

    .line 1470
    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/musicanalayzer/MusicAnalyzer;->analyseMusic()V

    .line 1472
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$9;->s:Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/musicanalayzer/MusicAnalyzer;->getBarDuration()F

    move-result v4

    invoke-static {v2, v4}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->a(Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;F)V

    .line 1473
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$9;->s:Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/musicanalayzer/MusicAnalyzer;->getDownBeatTimings()[F

    move-result-object v4

    invoke-static {v2, v4}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->a(Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;[F)V

    .line 1474
    invoke-static {}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->a()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "::startBarAnalyzer::barDurationSeconds:: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$9;->s:Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;

    invoke-static {v5}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->j(Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;)F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1476
    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/musicanalayzer/MusicAnalyzer;->close()V

    .line 1478
    invoke-static {}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->a()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "::startMvFlightAnalyser::doInBackground:: MUSIC analyser taken time : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$9;->s:Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;

    invoke-static {v6}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->k(Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " milliseconds"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1479
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$9;->s:Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->a(Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;J)J

    .line 1481
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$9;->s:Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->c(Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;Z)Z

    .line 1487
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$9;->s:Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;

    invoke-static {v2}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->l(Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1488
    invoke-static {}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, "::doInBackground: shouldCancel after analyseMusic"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1489
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$9;->s:Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;

    invoke-static {v2}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->m(Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;)V

    .line 1490
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$9;->s:Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;

    const/16 v3, 0x6b

    invoke-static {v2, v3}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->a(Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;I)I

    .line 1491
    const/4 v2, 0x0

    .line 1625
    :goto_1
    return-object v2

    .line 1483
    :cond_1
    invoke-static {}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, "::startMvFlightAnalyser::doInBackground()::MUSIC ANALYSIS BYPASSED"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1496
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$9;->s:Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;

    invoke-static {v2}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->n(Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1497
    const/4 v2, 0x0

    move v3, v2

    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$9;->s:Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;

    invoke-static {v2}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->o(Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v3, v2, :cond_4

    .line 1498
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$9;->s:Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;

    invoke-static {v2}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->o(Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/muvee/mvflightanalyser/data/structures/MVFlightAnalyserResult;

    sput-object v2, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->currentFlightAnalyserResult:Lcom/muvee/mvflightanalyser/data/structures/MVFlightAnalyserResult;

    .line 1499
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$9;->s:Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;

    invoke-static {v2}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->p(Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;)D

    move-result-wide v4

    .line 1501
    sget-object v2, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->currentSettingsParam:Lcom/muvee/mvdronecomposer/SettingsParam;

    invoke-virtual {v2}, Lcom/muvee/mvdronecomposer/SettingsParam;->getDuration()I

    move-result v2

    int-to-double v6, v2

    cmpg-double v2, v4, v6

    if-gez v2, :cond_3

    .line 1502
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$9;->s:Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;

    const/4 v4, 0x1

    invoke-static {v2, v4}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->d(Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;Z)Z

    .line 1497
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_2

    .line 1504
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$9;->s:Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->d(Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;Z)Z

    .line 1508
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$9;->s:Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->e(Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;Z)Z

    .line 1512
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$9;->s:Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;

    invoke-static {v2}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->q(Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 1513
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$9;->f:Ljava/util/ArrayList;

    if-eqz v2, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$9;->f:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_10

    .line 1514
    invoke-static {}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->a()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "::startMvFlightAnalyser::doInBackground:: dataFilePathArray.size(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$9;->f:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1517
    const/4 v2, 0x0

    move v3, v2

    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$9;->f:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v3, v2, :cond_7

    .line 1518
    invoke-static {}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->a()Ljava/lang/String;

    move-result-object v4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "::startMvFlightAnalyser::doInBackground:: dataFilePath: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$9;->f:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1519
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$9;->s:Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;

    invoke-static {v2}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->r(Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;)Lcom/muvee/mvflightanalyser/MVFlightAnalyser;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$9;->f:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Lcom/muvee/mvflightanalyser/MVFlightAnalyser;->checkVideoForEmbeddedData(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 1520
    invoke-static {}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->a()Ljava/lang/String;

    move-result-object v4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "::startMvFlightAnalyser::doInBackground:: File doesn\'t have flight data!! - "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$9;->f:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1521
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$9;->s:Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;

    const/16 v3, 0x69

    invoke-static {v2, v3}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->a(Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;I)I

    .line 1522
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 1517
    :cond_6
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_3

    .line 1527
    :cond_7
    const/4 v2, 0x0

    move v3, v2

    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$9;->f:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v3, v2, :cond_9

    .line 1528
    invoke-static {}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->a()Ljava/lang/String;

    move-result-object v4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "::startMvFlightAnalyser::doInBackground:: dataFilePath: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$9;->f:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1529
    invoke-static {}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->a()Ljava/lang/String;

    move-result-object v4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "::startMvFlightAnalyser::doInBackground: DroneType: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$9;->s:Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;

    invoke-static {v2}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->r(Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;)Lcom/muvee/mvflightanalyser/MVFlightAnalyser;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$9;->f:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v6, v2}, Lcom/muvee/mvflightanalyser/MVFlightAnalyser;->checkVideoForDroneTypeAtPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1530
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$9;->s:Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;

    invoke-static {v2}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->r(Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;)Lcom/muvee/mvflightanalyser/MVFlightAnalyser;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$9;->f:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Lcom/muvee/mvflightanalyser/MVFlightAnalyser;->checkVideoForDroneTypeAtPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "Disco"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1531
    invoke-static {}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, "::startMvFlightAnalyser::doInBackground:: Unsupported drone type found"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1532
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$9;->s:Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;

    const/16 v3, 0x6d

    invoke-static {v2, v3}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->a(Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;I)I

    .line 1533
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 1527
    :cond_8
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto/16 :goto_4

    .line 1538
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$9;->s:Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;

    invoke-static {v2}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->o(Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1539
    const-wide/16 v2, 0x0

    .line 1543
    :cond_a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$9;->s:Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;

    invoke-static {v5}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->l(Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 1544
    invoke-static {}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, "::doInBackground: shouldCancel during flight analysis"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1580
    :cond_b
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$9;->s:Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->d(Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;Z)Z

    .line 1589
    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$9;->s:Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;

    invoke-static {v2}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->l(Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 1590
    invoke-static {}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, "::doInBackground: shouldCancel after flight analysis"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1591
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$9;->s:Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;

    invoke-static {v2}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->m(Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;)V

    .line 1592
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$9;->s:Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;

    const/16 v3, 0x6b

    invoke-static {v2, v3}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->a(Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;I)I

    .line 1593
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 1549
    :cond_c
    const/4 v5, 0x2

    if-le v4, v5, :cond_e

    .line 1551
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$9;->s:Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;

    const/16 v5, 0x6a

    invoke-static {v4, v5}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->a(Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;I)I

    .line 1552
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$9;->s:Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;

    const-wide v6, 0x408f400000000000L    # 1000.0

    mul-double/2addr v2, v6

    double-to-long v2, v2

    invoke-static {v4, v2, v3}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->b(Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;J)J

    .line 1555
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$9;->s:Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;

    invoke-static {v2}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->h(Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$9;->s:Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;

    invoke-static {v2}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->h(Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$9;->s:Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;

    invoke-static {v2}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->h(Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_b

    .line 1556
    :cond_d
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 1561
    :cond_e
    invoke-static {}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->a()Ljava/lang/String;

    move-result-object v5

    const-string v6, "::startMvFlightAnalyser::doInBackground:: processDataFilePathArray +"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1562
    invoke-static {}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->a()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "::startMvFlightAnalyser::doInBackground:: processDataFilePathArray detail - allowTakeOff: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$9;->k:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " allowLanding: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$9;->l:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " tolerance: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1563
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$9;->s:Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;

    invoke-static {v5}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->r(Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;)Lcom/muvee/mvflightanalyser/MVFlightAnalyser;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$9;->f:Ljava/util/ArrayList;

    sget-object v7, Lcom/muvee/mvflightanalyser/MVFlightAnalyser;->kFlightDataTypeParrot:Ljava/lang/String;

    invoke-virtual {v5, v6, v7, v4}, Lcom/muvee/mvflightanalyser/MVFlightAnalyser;->processDataFilePathArray(Ljava/util/ArrayList;Ljava/lang/String;I)Lcom/muvee/mvflightanalyser/data/structures/MVFlightAnalyserResult;

    move-result-object v5

    sput-object v5, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->currentFlightAnalyserResult:Lcom/muvee/mvflightanalyser/data/structures/MVFlightAnalyserResult;

    .line 1564
    invoke-static {}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->a()Ljava/lang/String;

    move-result-object v5

    const-string v6, "::startMvFlightAnalyser::doInBackground:: processDataFilePathArray -"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1567
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$9;->s:Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;

    invoke-static {v5}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->o(Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;)Ljava/util/ArrayList;

    move-result-object v5

    sget-object v6, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->currentFlightAnalyserResult:Lcom/muvee/mvflightanalyser/data/structures/MVFlightAnalyserResult;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1570
    invoke-static {}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->a()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "::startMvFlightAnalyser::doInBackground:: currentFlightAnalyserResult.timingsArray.size(): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->currentFlightAnalyserResult:Lcom/muvee/mvflightanalyser/data/structures/MVFlightAnalyserResult;

    iget-object v7, v7, Lcom/muvee/mvflightanalyser/data/structures/MVFlightAnalyserResult;->timingsArray:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1571
    sget-object v5, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->currentFlightAnalyserResult:Lcom/muvee/mvflightanalyser/data/structures/MVFlightAnalyserResult;

    iget-object v5, v5, Lcom/muvee/mvflightanalyser/data/structures/MVFlightAnalyserResult;->timingsArray:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_f

    .line 1572
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$9;->s:Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;

    invoke-static {v2}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->p(Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;)D

    move-result-wide v2

    .line 1576
    :cond_f
    add-int/lit8 v4, v4, 0x1

    .line 1578
    move-object/from16 v0, p0

    iget v5, v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$9;->a:I

    int-to-double v6, v5

    cmpg-double v5, v2, v6

    if-ltz v5, :cond_a

    goto/16 :goto_5

    .line 1582
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$9;->r:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    goto/16 :goto_6

    .line 1585
    :cond_11
    invoke-static {}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, "::startMvFlightAnalyser::doInBackground()::FLIGHT ANALYSIS BYPASSED"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 1597
    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$9;->s:Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;

    invoke-static {v2}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->s(Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;)V

    .line 1598
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$9;->s:Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;

    invoke-static {v2}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->h(Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_13

    .line 1599
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$9;->s:Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$9;->s:Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;

    invoke-static {v3}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->h(Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v2, v3}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->b(Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;I)I

    .line 1604
    :goto_7
    invoke-static {}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->a()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "::startMvFlightAnalyser::doInBackground:: MVFlight analyser taken time : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$9;->s:Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;

    invoke-static {v6}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->k(Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " milliseconds"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1606
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$9;->s:Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;

    invoke-static {v2}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->h(Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_15

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$9;->s:Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;

    invoke-static {v2}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->h(Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_15

    .line 1607
    invoke-static {}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->a()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "::startMvFlightAnalyser::doInBackground:: mTimingsArray.size(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$9;->s:Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;

    invoke-static {v4}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->h(Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1608
    const/4 v2, 0x0

    move v3, v2

    :goto_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$9;->s:Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;

    invoke-static {v2}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->h(Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v3, v2, :cond_14

    .line 1609
    invoke-static {}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->a()Ljava/lang/String;

    move-result-object v4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "::startMvFlightAnalyser::doInBackground:: mTimingsArray: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$9;->s:Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;

    invoke-static {v2}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->h(Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;

    iget-object v2, v2, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->dataFilePath:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", compositionEffectType: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$9;->s:Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;

    invoke-static {v2}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->h(Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;

    iget-object v2, v2, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->compositionEffectType:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", startTime: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$9;->s:Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;

    invoke-static {v2}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->h(Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;

    iget-wide v6, v2, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->startTime:D

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", endTime: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$9;->s:Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;

    invoke-static {v2}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->h(Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;

    iget-wide v6, v2, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->endTime:D

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1608
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto/16 :goto_8

    .line 1601
    :cond_13
    invoke-static {}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, "::startMvFlightAnalyser::doInBackground:: mTimingsArray is null!! "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 1612
    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$9;->s:Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;

    invoke-virtual {v2}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->getCreditsPath()Ljava/lang/String;

    move-result-object v2

    .line 1613
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$9;->s:Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;

    invoke-virtual {v3, v2}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->setCreditItem(Ljava/lang/String;)V

    .line 1616
    :cond_15
    invoke-static {}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->a()Ljava/lang/String;

    move-result-object v3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "::startMvFlightAnalyser::doInBackground: isMadeResource["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v2, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->themeNameArray:Ljava/util/ArrayList;

    sget-object v5, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->currentSettingsParam:Lcom/muvee/mvdronecomposer/SettingsParam;

    invoke-virtual {v5}, Lcom/muvee/mvdronecomposer/SettingsParam;->getThemeIndex()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "] : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->isMadeResource:[Ljava/lang/Boolean;

    sget-object v5, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->currentSettingsParam:Lcom/muvee/mvdronecomposer/SettingsParam;

    invoke-virtual {v5}, Lcom/muvee/mvdronecomposer/SettingsParam;->getThemeIndex()I

    move-result v5

    aget-object v4, v4, v5

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1617
    sget-object v2, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->isMadeResource:[Ljava/lang/Boolean;

    sget-object v3, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->currentSettingsParam:Lcom/muvee/mvdronecomposer/SettingsParam;

    invoke-virtual {v3}, Lcom/muvee/mvdronecomposer/SettingsParam;->getThemeIndex()I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_16

    .line 1618
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$9;->s:Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$9;->r:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->a(Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;Landroid/content/Context;)V

    .line 1619
    sget-object v2, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->isMadeResource:[Ljava/lang/Boolean;

    sget-object v3, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->currentSettingsParam:Lcom/muvee/mvdronecomposer/SettingsParam;

    invoke-virtual {v3}, Lcom/muvee/mvdronecomposer/SettingsParam;->getThemeIndex()I

    move-result v3

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    .line 1620
    invoke-static {}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->a()Ljava/lang/String;

    move-result-object v3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "::startMvFlightAnalyser::doInBackground: isMadeResource to true for- "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v2, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->themeNameArray:Ljava/util/ArrayList;

    sget-object v5, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->currentSettingsParam:Lcom/muvee/mvdronecomposer/SettingsParam;

    invoke-virtual {v5}, Lcom/muvee/mvdronecomposer/SettingsParam;->getThemeIndex()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1625
    :goto_9
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 1622
    :cond_16
    invoke-static {}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, "::startMvFlightAnalyser::doInBackground: already made resource!!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9
.end method

.method protected a(Ljava/lang/Void;)V
    .locals 3

    .prologue
    .line 1408
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 1410
    invoke-static {}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "::startMvFlightAnalyser:: onPostExecute() startedDoInBackground: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$9;->s:Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;

    invoke-static {v2}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->e(Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1411
    iget-object v0, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$9;->s:Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;

    invoke-static {v0}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->e(Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1412
    invoke-static {}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "::startMvFlightAnalyser:: onPostExecute() onComplete() called, userSetDuration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$9;->a:I

    mul-int/lit16 v2, v2, 0x3e8

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1415
    iget-object v0, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$9;->s:Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;

    invoke-static {v0}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->f(Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 1416
    iget-object v0, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$9;->b:Lcom/muvee/mvdronecomposer/MVFlightAnalyserCallBack;

    iget-object v1, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$9;->s:Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;

    invoke-static {v1}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->f(Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/muvee/mvdronecomposer/MVFlightAnalyserCallBack;->onError(I)V

    .line 1420
    :goto_0
    iget-object v0, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$9;->s:Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->b(Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;Z)Z

    .line 1422
    :cond_0
    return-void

    .line 1418
    :cond_1
    iget-object v0, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$9;->b:Lcom/muvee/mvdronecomposer/MVFlightAnalyserCallBack;

    const/4 v1, -0x3

    iget-object v2, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$9;->s:Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;

    invoke-static {v2}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->g(Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/muvee/mvdronecomposer/MVFlightAnalyserCallBack;->onComplete(II)V

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1405
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$9;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1405
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$9;->a(Ljava/lang/Void;)V

    return-void
.end method
