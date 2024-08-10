.class Lcom/semantive/waveformandroid/waveform/soundfile/CheapAAC$Atom;
.super Ljava/lang/Object;
.source "CheapAAC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/semantive/waveformandroid/waveform/soundfile/CheapAAC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Atom"
.end annotation


# instance fields
.field public data:[B

.field public len:I

.field public start:I

.field final synthetic this$0:Lcom/semantive/waveformandroid/waveform/soundfile/CheapAAC;


# direct methods
.method constructor <init>(Lcom/semantive/waveformandroid/waveform/soundfile/CheapAAC;)V
    .locals 0
    .param p1, "this$0"    # Lcom/semantive/waveformandroid/waveform/soundfile/CheapAAC;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapAAC$Atom;->this$0:Lcom/semantive/waveformandroid/waveform/soundfile/CheapAAC;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
