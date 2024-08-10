.class public Lcom/muvee/dsg/mmaputils/Timer;
.super Ljava/lang/Object;
.source "Timer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static GetCurrentTicks()J
    .locals 4

    .prologue
    .line 27
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 28
    const-wide/16 v2, 0x2710

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public static GetCurrentTime_msec()J
    .locals 2

    .prologue
    .line 21
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 23
    return-wide v0
.end method

.method public static invoke([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 12
    aget-object v0, p0, v2

    const-string/jumbo v1, "timemsec"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 13
    invoke-static {}, Lcom/muvee/dsg/mmaputils/Timer;->GetCurrentTime_msec()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 17
    :goto_0
    return-object v0

    .line 14
    :cond_0
    aget-object v0, p0, v2

    const-string/jumbo v1, "timeticks"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 15
    invoke-static {}, Lcom/muvee/dsg/mmaputils/Timer;->GetCurrentTicks()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 17
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
