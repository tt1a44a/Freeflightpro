.class final synthetic Lcom/semantive/waveformandroid/waveform/WaveformFragment$2$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final arg$1:Lcom/semantive/waveformandroid/waveform/WaveformFragment$2;


# direct methods
.method private constructor <init>(Lcom/semantive/waveformandroid/waveform/WaveformFragment$2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment$2$$Lambda$1;->arg$1:Lcom/semantive/waveformandroid/waveform/WaveformFragment$2;

    return-void
.end method

.method private static get$Lambda(Lcom/semantive/waveformandroid/waveform/WaveformFragment$2;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/semantive/waveformandroid/waveform/WaveformFragment$2$$Lambda$1;

    invoke-direct {v0, p0}, Lcom/semantive/waveformandroid/waveform/WaveformFragment$2$$Lambda$1;-><init>(Lcom/semantive/waveformandroid/waveform/WaveformFragment$2;)V

    return-object v0
.end method

.method public static lambdaFactory$(Lcom/semantive/waveformandroid/waveform/WaveformFragment$2;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/semantive/waveformandroid/waveform/WaveformFragment$2$$Lambda$1;

    invoke-direct {v0, p0}, Lcom/semantive/waveformandroid/waveform/WaveformFragment$2$$Lambda$1;-><init>(Lcom/semantive/waveformandroid/waveform/WaveformFragment$2;)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 1
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment$2$$Lambda$1;->arg$1:Lcom/semantive/waveformandroid/waveform/WaveformFragment$2;

    invoke-static {v0}, Lcom/semantive/waveformandroid/waveform/WaveformFragment$2;->access$lambda$0(Lcom/semantive/waveformandroid/waveform/WaveformFragment$2;)V

    return-void
.end method
