.class public Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;
.super Ljava/lang/Object;
.source "AnimSeg.java"


# instance fields
.field public objectValue:Ljava/lang/Object;

.field public time:I

.field public value:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput p1, p0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 33
    iput p2, p0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 34
    return-void
.end method


# virtual methods
.method public setTime(I)Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;
    .locals 0

    .prologue
    .line 42
    iput p1, p0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 43
    return-object p0
.end method

.method public setValue(I)Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;
    .locals 0

    .prologue
    .line 37
    iput p1, p0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 38
    return-object p0
.end method
