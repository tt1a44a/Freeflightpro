.class final enum Lcom/semantive/waveformandroid/waveform/soundfile/WavFile$IOState;
.super Ljava/lang/Enum;
.source "WavFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/semantive/waveformandroid/waveform/soundfile/WavFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "IOState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/semantive/waveformandroid/waveform/soundfile/WavFile$IOState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/semantive/waveformandroid/waveform/soundfile/WavFile$IOState;

.field public static final enum CLOSED:Lcom/semantive/waveformandroid/waveform/soundfile/WavFile$IOState;

.field public static final enum READING:Lcom/semantive/waveformandroid/waveform/soundfile/WavFile$IOState;

.field public static final enum WRITING:Lcom/semantive/waveformandroid/waveform/soundfile/WavFile$IOState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 15
    new-instance v0, Lcom/semantive/waveformandroid/waveform/soundfile/WavFile$IOState;

    const-string v1, "READING"

    invoke-direct {v0, v1, v2}, Lcom/semantive/waveformandroid/waveform/soundfile/WavFile$IOState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/semantive/waveformandroid/waveform/soundfile/WavFile$IOState;->READING:Lcom/semantive/waveformandroid/waveform/soundfile/WavFile$IOState;

    new-instance v0, Lcom/semantive/waveformandroid/waveform/soundfile/WavFile$IOState;

    const-string v1, "WRITING"

    invoke-direct {v0, v1, v3}, Lcom/semantive/waveformandroid/waveform/soundfile/WavFile$IOState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/semantive/waveformandroid/waveform/soundfile/WavFile$IOState;->WRITING:Lcom/semantive/waveformandroid/waveform/soundfile/WavFile$IOState;

    new-instance v0, Lcom/semantive/waveformandroid/waveform/soundfile/WavFile$IOState;

    const-string v1, "CLOSED"

    invoke-direct {v0, v1, v4}, Lcom/semantive/waveformandroid/waveform/soundfile/WavFile$IOState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/semantive/waveformandroid/waveform/soundfile/WavFile$IOState;->CLOSED:Lcom/semantive/waveformandroid/waveform/soundfile/WavFile$IOState;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/semantive/waveformandroid/waveform/soundfile/WavFile$IOState;

    sget-object v1, Lcom/semantive/waveformandroid/waveform/soundfile/WavFile$IOState;->READING:Lcom/semantive/waveformandroid/waveform/soundfile/WavFile$IOState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/semantive/waveformandroid/waveform/soundfile/WavFile$IOState;->WRITING:Lcom/semantive/waveformandroid/waveform/soundfile/WavFile$IOState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/semantive/waveformandroid/waveform/soundfile/WavFile$IOState;->CLOSED:Lcom/semantive/waveformandroid/waveform/soundfile/WavFile$IOState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/semantive/waveformandroid/waveform/soundfile/WavFile$IOState;->$VALUES:[Lcom/semantive/waveformandroid/waveform/soundfile/WavFile$IOState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/semantive/waveformandroid/waveform/soundfile/WavFile$IOState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 15
    const-class v0, Lcom/semantive/waveformandroid/waveform/soundfile/WavFile$IOState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/semantive/waveformandroid/waveform/soundfile/WavFile$IOState;

    return-object v0
.end method

.method public static values()[Lcom/semantive/waveformandroid/waveform/soundfile/WavFile$IOState;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/semantive/waveformandroid/waveform/soundfile/WavFile$IOState;->$VALUES:[Lcom/semantive/waveformandroid/waveform/soundfile/WavFile$IOState;

    invoke-virtual {v0}, [Lcom/semantive/waveformandroid/waveform/soundfile/WavFile$IOState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/semantive/waveformandroid/waveform/soundfile/WavFile$IOState;

    return-object v0
.end method
