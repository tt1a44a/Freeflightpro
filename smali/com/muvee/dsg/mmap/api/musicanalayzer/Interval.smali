.class public Lcom/muvee/dsg/mmap/api/musicanalayzer/Interval;
.super Ljava/lang/Object;
.source "Interval.java"


# instance fields
.field public endTimeMSec:I

.field public startTimeMSec:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput p1, p0, Lcom/muvee/dsg/mmap/api/musicanalayzer/Interval;->startTimeMSec:I

    .line 26
    iput p2, p0, Lcom/muvee/dsg/mmap/api/musicanalayzer/Interval;->endTimeMSec:I

    .line 27
    return-void
.end method


# virtual methods
.method public setEndTimeMSec(I)Lcom/muvee/dsg/mmap/api/musicanalayzer/Interval;
    .locals 0

    .prologue
    .line 35
    iput p1, p0, Lcom/muvee/dsg/mmap/api/musicanalayzer/Interval;->endTimeMSec:I

    .line 36
    return-object p0
.end method

.method public setStartTimeMSec(I)Lcom/muvee/dsg/mmap/api/musicanalayzer/Interval;
    .locals 0

    .prologue
    .line 30
    iput p1, p0, Lcom/muvee/dsg/mmap/api/musicanalayzer/Interval;->startTimeMSec:I

    .line 31
    return-object p0
.end method
