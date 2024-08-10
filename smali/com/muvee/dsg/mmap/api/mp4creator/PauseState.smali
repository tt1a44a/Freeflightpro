.class public Lcom/muvee/dsg/mmap/api/mp4creator/PauseState;
.super Ljava/lang/Object;
.source "PauseState.java"


# instance fields
.field public isPaused:I

.field public lastAudioTime:I

.field public lastAudioTimeStamp:I

.field public lastFrameNo:I

.field public lastVideoTimeStamp:I

.field public writerInstance:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
