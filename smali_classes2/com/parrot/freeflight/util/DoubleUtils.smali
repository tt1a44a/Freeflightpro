.class public Lcom/parrot/freeflight/util/DoubleUtils;
.super Ljava/lang/Object;
.source "DoubleUtils.java"


# static fields
.field private static final EPSILON:D = 1.0E-5


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static equals(DD)Z
    .locals 6
    .param p0, "a"    # D
    .param p2, "b"    # D

    .prologue
    const/4 v0, 0x1

    .line 18
    cmpl-double v1, p0, p2

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sub-double v2, p0, p2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide v4, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpg-double v1, v2, v4

    if-ltz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static equals(DDD)Z
    .locals 4
    .param p0, "a"    # D
    .param p2, "b"    # D
    .param p4, "epsilon"    # D

    .prologue
    const/4 v0, 0x1

    .line 35
    cmpl-double v1, p0, p2

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sub-double v2, p0, p2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpg-double v1, v2, p4

    if-ltz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static greaterThan(DD)Z
    .locals 6
    .param p0, "a"    # D
    .param p2, "b"    # D

    .prologue
    .line 51
    const-wide v4, 0x3ee4f8b588e368f1L    # 1.0E-5

    move-wide v0, p0

    move-wide v2, p2

    invoke-static/range {v0 .. v5}, Lcom/parrot/freeflight/util/DoubleUtils;->greaterThan(DDD)Z

    move-result v0

    return v0
.end method

.method public static greaterThan(DDD)Z
    .locals 2
    .param p0, "a"    # D
    .param p2, "b"    # D
    .param p4, "epsilon"    # D

    .prologue
    .line 67
    sub-double v0, p0, p2

    cmpl-double v0, v0, p4

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static lessThan(DD)Z
    .locals 6
    .param p0, "a"    # D
    .param p2, "b"    # D

    .prologue
    .line 83
    const-wide v4, 0x3ee4f8b588e368f1L    # 1.0E-5

    move-wide v0, p0

    move-wide v2, p2

    invoke-static/range {v0 .. v5}, Lcom/parrot/freeflight/util/DoubleUtils;->lessThan(DDD)Z

    move-result v0

    return v0
.end method

.method public static lessThan(DDD)Z
    .locals 2
    .param p0, "a"    # D
    .param p2, "b"    # D
    .param p4, "epsilon"    # D

    .prologue
    .line 99
    sub-double v0, p2, p0

    cmpl-double v0, v0, p4

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
