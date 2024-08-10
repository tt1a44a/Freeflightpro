.class public Lcom/muvee/dsg/mmap/api/slowmo/SlowMoEffectParam;
.super Ljava/lang/Object;
.source "SlowMoEffectParam.java"


# instance fields
.field public duration:I

.field public effectType:Lcom/muvee/dsg/mmap/api/slowmo/MV_SLOW_MOTION_EX;

.field public speedForUniformEffect:I

.field public startTime:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/16 v0, 0x64

    iput v0, p0, Lcom/muvee/dsg/mmap/api/slowmo/SlowMoEffectParam;->speedForUniformEffect:I

    return-void
.end method
