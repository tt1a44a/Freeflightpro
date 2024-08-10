.class public Lcom/semantive/waveformandroid/waveform/Segment;
.super Ljava/lang/Object;
.source "Segment.java"


# instance fields
.field private final color:I

.field private final start:Ljava/lang/Double;

.field private final stop:Ljava/lang/Double;


# direct methods
.method public constructor <init>(Ljava/lang/Double;Ljava/lang/Double;I)V
    .locals 0
    .param p1, "start"    # Ljava/lang/Double;
    .param p2, "stop"    # Ljava/lang/Double;
    .param p3, "color"    # I

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/semantive/waveformandroid/waveform/Segment;->start:Ljava/lang/Double;

    .line 10
    iput-object p2, p0, Lcom/semantive/waveformandroid/waveform/Segment;->stop:Ljava/lang/Double;

    .line 11
    iput p3, p0, Lcom/semantive/waveformandroid/waveform/Segment;->color:I

    .line 12
    return-void
.end method


# virtual methods
.method public final getColor()I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lcom/semantive/waveformandroid/waveform/Segment;->color:I

    return v0
.end method

.method public final getStart()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/semantive/waveformandroid/waveform/Segment;->start:Ljava/lang/Double;

    return-object v0
.end method

.method public final getStop()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/semantive/waveformandroid/waveform/Segment;->stop:Ljava/lang/Double;

    return-object v0
.end method
