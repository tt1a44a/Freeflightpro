.class final synthetic Lcom/semantive/waveformandroid/waveform/WaveformFragment$$Lambda$6;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/semantive/waveformandroid/waveform/soundfile/CheapSoundFile$ProgressListener;


# instance fields
.field private final arg$1:Lcom/semantive/waveformandroid/waveform/WaveformFragment;


# direct methods
.method private constructor <init>(Lcom/semantive/waveformandroid/waveform/WaveformFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment$$Lambda$6;->arg$1:Lcom/semantive/waveformandroid/waveform/WaveformFragment;

    return-void
.end method

.method private static get$Lambda(Lcom/semantive/waveformandroid/waveform/WaveformFragment;)Lcom/semantive/waveformandroid/waveform/soundfile/CheapSoundFile$ProgressListener;
    .locals 1

    new-instance v0, Lcom/semantive/waveformandroid/waveform/WaveformFragment$$Lambda$6;

    invoke-direct {v0, p0}, Lcom/semantive/waveformandroid/waveform/WaveformFragment$$Lambda$6;-><init>(Lcom/semantive/waveformandroid/waveform/WaveformFragment;)V

    return-object v0
.end method

.method public static lambdaFactory$(Lcom/semantive/waveformandroid/waveform/WaveformFragment;)Lcom/semantive/waveformandroid/waveform/soundfile/CheapSoundFile$ProgressListener;
    .locals 1

    new-instance v0, Lcom/semantive/waveformandroid/waveform/WaveformFragment$$Lambda$6;

    invoke-direct {v0, p0}, Lcom/semantive/waveformandroid/waveform/WaveformFragment$$Lambda$6;-><init>(Lcom/semantive/waveformandroid/waveform/WaveformFragment;)V

    return-object v0
.end method


# virtual methods
.method public reportProgress(D)Z
    .locals 1
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment$$Lambda$6;->arg$1:Lcom/semantive/waveformandroid/waveform/WaveformFragment;

    invoke-static {v0, p1, p2}, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->access$lambda$3(Lcom/semantive/waveformandroid/waveform/WaveformFragment;D)Z

    move-result v0

    return v0
.end method
