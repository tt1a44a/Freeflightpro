.class final synthetic Lcom/semantive/waveformandroid/waveform/WaveformFragment$$Lambda$5;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field private final arg$1:Lcom/semantive/waveformandroid/waveform/WaveformFragment;


# direct methods
.method private constructor <init>(Lcom/semantive/waveformandroid/waveform/WaveformFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment$$Lambda$5;->arg$1:Lcom/semantive/waveformandroid/waveform/WaveformFragment;

    return-void
.end method

.method private static get$Lambda(Lcom/semantive/waveformandroid/waveform/WaveformFragment;)Landroid/content/DialogInterface$OnCancelListener;
    .locals 1

    new-instance v0, Lcom/semantive/waveformandroid/waveform/WaveformFragment$$Lambda$5;

    invoke-direct {v0, p0}, Lcom/semantive/waveformandroid/waveform/WaveformFragment$$Lambda$5;-><init>(Lcom/semantive/waveformandroid/waveform/WaveformFragment;)V

    return-object v0
.end method

.method public static lambdaFactory$(Lcom/semantive/waveformandroid/waveform/WaveformFragment;)Landroid/content/DialogInterface$OnCancelListener;
    .locals 1

    new-instance v0, Lcom/semantive/waveformandroid/waveform/WaveformFragment$$Lambda$5;

    invoke-direct {v0, p0}, Lcom/semantive/waveformandroid/waveform/WaveformFragment$$Lambda$5;-><init>(Lcom/semantive/waveformandroid/waveform/WaveformFragment;)V

    return-object v0
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment$$Lambda$5;->arg$1:Lcom/semantive/waveformandroid/waveform/WaveformFragment;

    invoke-static {v0, p1}, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->access$lambda$2(Lcom/semantive/waveformandroid/waveform/WaveformFragment;Landroid/content/DialogInterface;)V

    return-void
.end method
