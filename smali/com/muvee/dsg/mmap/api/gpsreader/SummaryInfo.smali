.class public Lcom/muvee/dsg/mmap/api/gpsreader/SummaryInfo;
.super Ljava/lang/Object;
.source "SummaryInfo.java"


# instance fields
.field public averageSpeed:D

.field public date:D

.field public maxSpeed:D

.field public startTime:D

.field public totalDistance:D

.field public totalTime:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const-wide/high16 v0, 0x402e000000000000L    # 15.0

    iput-wide v0, p0, Lcom/muvee/dsg/mmap/api/gpsreader/SummaryInfo;->maxSpeed:D

    return-void
.end method
