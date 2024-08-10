.class Lcom/semantive/waveformandroid/waveform/WaveformFragment$2;
.super Ljava/lang/Thread;
.source "WaveformFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/semantive/waveformandroid/waveform/WaveformFragment;->loadFromFile()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/semantive/waveformandroid/waveform/WaveformFragment;

.field final synthetic val$listener:Lcom/semantive/waveformandroid/waveform/soundfile/CheapSoundFile$ProgressListener;


# direct methods
.method constructor <init>(Lcom/semantive/waveformandroid/waveform/WaveformFragment;Lcom/semantive/waveformandroid/waveform/soundfile/CheapSoundFile$ProgressListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/semantive/waveformandroid/waveform/WaveformFragment;

    .prologue
    .line 440
    iput-object p1, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment$2;->this$0:Lcom/semantive/waveformandroid/waveform/WaveformFragment;

    iput-object p2, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment$2;->val$listener:Lcom/semantive/waveformandroid/waveform/soundfile/CheapSoundFile$ProgressListener;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method static synthetic access$lambda$0(Lcom/semantive/waveformandroid/waveform/WaveformFragment$2;)V
    .locals 0

    invoke-direct {p0}, Lcom/semantive/waveformandroid/waveform/WaveformFragment$2;->lambda$run$4()V

    return-void
.end method

.method private synthetic lambda$run$4()V
    .locals 1

    .prologue
    .line 451
    iget-object v0, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment$2;->this$0:Lcom/semantive/waveformandroid/waveform/WaveformFragment;

    invoke-virtual {v0}, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->finishOpeningSoundFile()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 443
    :try_start_0
    iget-object v1, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment$2;->this$0:Lcom/semantive/waveformandroid/waveform/WaveformFragment;

    iget-object v2, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment$2;->this$0:Lcom/semantive/waveformandroid/waveform/WaveformFragment;

    iget-object v2, v2, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment$2;->val$listener:Lcom/semantive/waveformandroid/waveform/soundfile/CheapSoundFile$ProgressListener;

    invoke-static {v2, v3}, Lcom/semantive/waveformandroid/waveform/soundfile/CheapSoundFile;->create(Ljava/lang/String;Lcom/semantive/waveformandroid/waveform/soundfile/CheapSoundFile$ProgressListener;)Lcom/semantive/waveformandroid/waveform/soundfile/CheapSoundFile;

    move-result-object v2

    iput-object v2, v1, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mSoundFile:Lcom/semantive/waveformandroid/waveform/soundfile/CheapSoundFile;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 450
    iget-object v1, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment$2;->this$0:Lcom/semantive/waveformandroid/waveform/WaveformFragment;

    iget-boolean v1, v1, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mLoadingKeepGoing:Z

    if-eqz v1, :cond_0

    .line 451
    iget-object v1, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment$2;->this$0:Lcom/semantive/waveformandroid/waveform/WaveformFragment;

    iget-object v1, v1, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mHandler:Landroid/os/Handler;

    invoke-static {p0}, Lcom/semantive/waveformandroid/waveform/WaveformFragment$2$$Lambda$1;->lambdaFactory$(Lcom/semantive/waveformandroid/waveform/WaveformFragment$2;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 453
    :cond_0
    :goto_0
    return-void

    .line 444
    :catch_0
    move-exception v0

    .line 445
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "WaveformFragment"

    const-string v2, "Error while loading sound file"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 446
    iget-object v1, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment$2;->this$0:Lcom/semantive/waveformandroid/waveform/WaveformFragment;

    iget-object v1, v1, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 447
    iget-object v1, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment$2;->this$0:Lcom/semantive/waveformandroid/waveform/WaveformFragment;

    iget-object v1, v1, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mInfo:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
