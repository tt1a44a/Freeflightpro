.class public Lcom/muvee/mvdronecomposer/HighlightSegment;
.super Ljava/lang/Object;
.source "HighlightSegment.java"


# instance fields
.field public endTime:D

.field public startTime:D

.field public videoFilePath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;DD)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    invoke-virtual {p0, p1}, Lcom/muvee/mvdronecomposer/HighlightSegment;->setVideoFilePath(Ljava/lang/String;)V

    .line 15
    invoke-virtual {p0, p2, p3}, Lcom/muvee/mvdronecomposer/HighlightSegment;->setStartTime(D)V

    .line 16
    invoke-virtual {p0, p4, p5}, Lcom/muvee/mvdronecomposer/HighlightSegment;->setEndTime(D)V

    .line 17
    return-void
.end method


# virtual methods
.method public getEndTime()D
    .locals 2

    .prologue
    .line 27
    iget-wide v0, p0, Lcom/muvee/mvdronecomposer/HighlightSegment;->endTime:D

    return-wide v0
.end method

.method public getStartTime()D
    .locals 2

    .prologue
    .line 34
    iget-wide v0, p0, Lcom/muvee/mvdronecomposer/HighlightSegment;->startTime:D

    return-wide v0
.end method

.method public getVideoFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/muvee/mvdronecomposer/HighlightSegment;->videoFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public setEndTime(D)V
    .locals 1

    .prologue
    .line 30
    iput-wide p1, p0, Lcom/muvee/mvdronecomposer/HighlightSegment;->endTime:D

    .line 31
    return-void
.end method

.method public setStartTime(D)V
    .locals 1

    .prologue
    .line 37
    iput-wide p1, p0, Lcom/muvee/mvdronecomposer/HighlightSegment;->startTime:D

    .line 38
    return-void
.end method

.method public setVideoFilePath(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/muvee/mvdronecomposer/HighlightSegment;->videoFilePath:Ljava/lang/String;

    .line 24
    return-void
.end method
