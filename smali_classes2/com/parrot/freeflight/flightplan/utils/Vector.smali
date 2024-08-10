.class public Lcom/parrot/freeflight/flightplan/utils/Vector;
.super Ljava/lang/Object;
.source "Vector.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static length([F)F
    .locals 10
    .param p0, "vector"    # [F
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 11
    const/4 v2, 0x0

    .line 12
    .local v2, "lengthSquare":F
    const/4 v0, 0x0

    .local v0, "it":I
    array-length v1, p0

    .local v1, "length":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 13
    float-to-double v4, v2

    aget v3, p0, v0

    float-to-double v6, v3

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    add-double/2addr v4, v6

    double-to-float v2, v4

    .line 12
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 15
    :cond_0
    float-to-double v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v3, v4

    return v3
.end method

.method public static normalize([F)[F
    .locals 4
    .param p0, "vector"    # [F
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 20
    invoke-static {p0}, Lcom/parrot/freeflight/flightplan/utils/Vector;->length([F)F

    move-result v2

    .line 21
    .local v2, "vecLength":F
    const/4 v0, 0x0

    .local v0, "it":I
    array-length v1, p0

    .local v1, "length":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 22
    aget v3, p0, v0

    div-float/2addr v3, v2

    aput v3, p0, v0

    .line 21
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 24
    :cond_0
    return-object p0
.end method

.method public static rotate([FFFFF)[F
    .locals 8
    .param p0, "vector"    # [F
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "angle"    # F
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "z"    # F
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    const/4 v6, 0x4

    const/4 v1, 0x0

    .line 29
    array-length v3, p0

    if-eq v3, v6, :cond_0

    .line 30
    new-instance v1, Ljava/security/InvalidParameterException;

    const-string v3, "Vector has to be a 4-dimensional vector."

    invoke-direct {v1, v3}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 32
    :cond_0
    const/16 v3, 0x10

    new-array v0, v3, [F

    .local v0, "matrixValues":[F
    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 33
    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->setRotateM([FIFFFF)V

    .line 34
    new-array v2, v6, [F

    .local v2, "resultVec":[F
    move v3, v1

    move-object v4, v0

    move v5, v1

    move-object v6, p0

    move v7, v1

    .line 35
    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    .line 36
    return-object v2
.end method
