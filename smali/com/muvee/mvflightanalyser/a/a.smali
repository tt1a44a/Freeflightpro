.class public Lcom/muvee/mvflightanalyser/a/a;
.super Ljava/lang/Object;
.source "MVFlightAnalyserUtils.java"


# static fields
.field private static a:Ljava/lang/String;

.field private static b:D


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 17
    const-string v0, "MVFlightAnalyserUtils"

    sput-object v0, Lcom/muvee/mvflightanalyser/a/a;->a:Ljava/lang/String;

    .line 18
    const-wide v0, 0x404ca5dc1a63c1f8L    # 57.29577951308232

    sput-wide v0, Lcom/muvee/mvflightanalyser/a/a;->b:D

    return-void
.end method

.method public static a(DDDD)D
    .locals 10

    .prologue
    .line 112
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    sget-wide v2, Lcom/muvee/mvflightanalyser/a/a;->b:D

    div-double/2addr v0, v2

    mul-double/2addr v0, p0

    .line 113
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sget-wide v4, Lcom/muvee/mvflightanalyser/a/a;->b:D

    div-double/2addr v2, v4

    mul-double/2addr v2, p2

    .line 114
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sget-wide v6, Lcom/muvee/mvflightanalyser/a/a;->b:D

    div-double/2addr v4, v6

    mul-double/2addr v4, p4

    .line 115
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    sget-wide v8, Lcom/muvee/mvflightanalyser/a/a;->b:D

    div-double/2addr v6, v8

    mul-double v6, v6, p6

    .line 117
    sub-double v2, v6, v2

    .line 118
    sub-double v6, v4, v0

    .line 120
    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v0, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    mul-double/2addr v0, v2

    add-double/2addr v0, v6

    .line 121
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    sub-double v0, v6, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    mul-double/2addr v0, v2

    .line 122
    const-wide v2, 0x41584dae00000000L    # 6371000.0

    mul-double/2addr v0, v2

    .line 124
    return-wide v0
.end method

.method private static a(FF)F
    .locals 8

    .prologue
    const-wide v6, 0x4056800000000000L    # 90.0

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    const v2, 0x358637bd    # 1.0E-6f

    const/4 v0, 0x0

    .line 53
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    .line 78
    :cond_0
    :goto_0
    return v0

    .line 55
    :cond_1
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v1, v1, v2

    if-gez v1, :cond_3

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, v2

    if-lez v1, :cond_3

    .line 56
    cmpl-float v1, p1, v0

    if-lez v1, :cond_2

    .line 57
    const/high16 v0, 0x42b40000    # 90.0f

    goto :goto_0

    .line 58
    :cond_2
    cmpg-float v1, p1, v0

    if-gez v1, :cond_4

    .line 59
    const/high16 v0, -0x3d4c0000    # -90.0f

    goto :goto_0

    .line 60
    :cond_3
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, v2

    if-lez v1, :cond_4

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v1, v1, v2

    if-gez v1, :cond_4

    .line 61
    cmpl-float v1, p0, v0

    if-gtz v1, :cond_0

    .line 63
    cmpg-float v1, p0, v0

    if-gez v1, :cond_4

    .line 64
    const/high16 v0, -0x3ccc0000    # -180.0f

    goto :goto_0

    .line 68
    :cond_4
    cmpl-float v1, p0, v0

    if-lez v1, :cond_5

    cmpl-float v1, p1, v0

    if-lez v1, :cond_5

    .line 69
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->atan(D)D

    move-result-wide v0

    sget-wide v2, Lcom/muvee/mvflightanalyser/a/a;->b:D

    mul-double/2addr v0, v2

    double-to-float v0, v0

    goto :goto_0

    .line 70
    :cond_5
    cmpl-float v1, p0, v0

    if-lez v1, :cond_6

    cmpg-float v1, p1, v0

    if-gez v1, :cond_6

    .line 71
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->atan(D)D

    move-result-wide v0

    sget-wide v2, Lcom/muvee/mvflightanalyser/a/a;->b:D

    mul-double/2addr v0, v2

    mul-double/2addr v0, v4

    double-to-float v0, v0

    goto :goto_0

    .line 72
    :cond_6
    cmpg-float v1, p0, v0

    if-gez v1, :cond_7

    cmpl-float v1, p1, v0

    if-lez v1, :cond_7

    .line 73
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->atan(D)D

    move-result-wide v0

    sget-wide v2, Lcom/muvee/mvflightanalyser/a/a;->b:D

    mul-double/2addr v0, v2

    add-double/2addr v0, v6

    double-to-float v0, v0

    goto/16 :goto_0

    .line 74
    :cond_7
    cmpg-float v1, p0, v0

    if-gez v1, :cond_0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    .line 75
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->atan(D)D

    move-result-wide v0

    sget-wide v2, Lcom/muvee/mvflightanalyser/a/a;->b:D

    mul-double/2addr v0, v2

    mul-double/2addr v0, v4

    sub-double/2addr v0, v6

    double-to-float v0, v0

    goto/16 :goto_0
.end method

.method public static a(Ljava/lang/String;)Ljava/util/Date;
    .locals 3

    .prologue
    .line 22
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd\'T\'HHmmssZ"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 23
    new-instance v1, Ljava/text/ParsePosition;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/text/ParsePosition;-><init>(I)V

    invoke-virtual {v0, p0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/muvee/mvflightanalyser/data/structures/c;FF)V
    .locals 8

    .prologue
    .line 29
    mul-float v0, p1, p1

    mul-float v1, p2, p2

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 30
    invoke-static {p1, p2}, Lcom/muvee/mvflightanalyser/a/a;->a(FF)F

    move-result v1

    .line 33
    iget v2, p0, Lcom/muvee/mvflightanalyser/data/structures/c;->j:F

    invoke-static {v2, v1}, Lcom/muvee/mvflightanalyser/a/a;->b(FF)F

    move-result v1

    .line 36
    float-to-double v2, v1

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_1

    float-to-double v2, v1

    const-wide v4, 0x4056800000000000L    # 90.0

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_1

    .line 37
    float-to-double v2, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-double v4, v4

    sget-wide v6, Lcom/muvee/mvflightanalyser/a/a;->b:D

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-float v2, v2

    iput v2, p0, Lcom/muvee/mvflightanalyser/data/structures/c;->e:F

    .line 38
    float-to-double v2, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    sget-wide v4, Lcom/muvee/mvflightanalyser/a/a;->b:D

    div-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    mul-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p0, Lcom/muvee/mvflightanalyser/data/structures/c;->f:F

    .line 49
    :cond_0
    :goto_0
    return-void

    .line 39
    :cond_1
    float-to-double v2, v1

    const-wide v4, 0x4056800000000000L    # 90.0

    cmpl-double v2, v2, v4

    if-lez v2, :cond_2

    float-to-double v2, v1

    const-wide v4, 0x4066800000000000L    # 180.0

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_2

    .line 40
    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    float-to-double v4, v0

    mul-double/2addr v2, v4

    const-wide v4, 0x4066800000000000L    # 180.0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v6

    float-to-double v6, v6

    sub-double/2addr v4, v6

    sget-wide v6, Lcom/muvee/mvflightanalyser/a/a;->b:D

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-float v2, v2

    iput v2, p0, Lcom/muvee/mvflightanalyser/data/structures/c;->e:F

    .line 41
    float-to-double v2, v0

    const-wide v4, 0x4066800000000000L    # 180.0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    sub-double v0, v4, v0

    sget-wide v4, Lcom/muvee/mvflightanalyser/a/a;->b:D

    div-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    mul-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p0, Lcom/muvee/mvflightanalyser/data/structures/c;->f:F

    goto :goto_0

    .line 42
    :cond_2
    float-to-double v2, v1

    const-wide/16 v4, 0x0

    cmpg-double v2, v2, v4

    if-gez v2, :cond_3

    float-to-double v2, v1

    const-wide v4, -0x3fa9800000000000L    # -90.0

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_3

    .line 43
    float-to-double v2, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-double v4, v4

    sget-wide v6, Lcom/muvee/mvflightanalyser/a/a;->b:D

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-float v2, v2

    iput v2, p0, Lcom/muvee/mvflightanalyser/data/structures/c;->e:F

    .line 44
    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    float-to-double v4, v0

    mul-double/2addr v2, v4

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    sget-wide v4, Lcom/muvee/mvflightanalyser/a/a;->b:D

    div-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    mul-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p0, Lcom/muvee/mvflightanalyser/data/structures/c;->f:F

    goto :goto_0

    .line 45
    :cond_3
    float-to-double v2, v1

    const-wide v4, -0x3fa9800000000000L    # -90.0

    cmpg-double v2, v2, v4

    if-gez v2, :cond_0

    float-to-double v2, v1

    const-wide v4, -0x3f99800000000000L    # -180.0

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_0

    .line 46
    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    float-to-double v4, v0

    mul-double/2addr v2, v4

    const-wide v4, 0x4066800000000000L    # 180.0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v6

    float-to-double v6, v6

    sub-double/2addr v4, v6

    sget-wide v6, Lcom/muvee/mvflightanalyser/a/a;->b:D

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-float v2, v2

    iput v2, p0, Lcom/muvee/mvflightanalyser/data/structures/c;->e:F

    .line 47
    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    float-to-double v4, v0

    mul-double/2addr v2, v4

    const-wide v4, 0x4066800000000000L    # 180.0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    sub-double v0, v4, v0

    sget-wide v4, Lcom/muvee/mvflightanalyser/a/a;->b:D

    div-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    mul-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p0, Lcom/muvee/mvflightanalyser/data/structures/c;->f:F

    goto/16 :goto_0
.end method

.method private static b(FF)F
    .locals 4

    .prologue
    const/high16 v3, 0x43b40000    # 360.0f

    const/4 v0, 0x0

    const v2, 0x358637bd    # 1.0E-6f

    .line 83
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    move p1, v0

    .line 106
    :cond_0
    :goto_0
    return p1

    .line 85
    :cond_1
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_0

    .line 87
    :cond_2
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, v2

    if-lez v1, :cond_4

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, v2

    if-lez v1, :cond_4

    .line 88
    cmpl-float v1, p0, v0

    if-lez v1, :cond_3

    .line 89
    const/high16 v0, -0x40800000    # -1.0f

    mul-float p1, p0, v0

    goto :goto_0

    .line 90
    :cond_3
    cmpg-float v1, p0, v0

    if-gez v1, :cond_4

    move p1, p0

    .line 91
    goto :goto_0

    .line 96
    :cond_4
    sub-float/2addr p1, p0

    .line 99
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x43340000    # 180.0f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 100
    cmpl-float v1, p1, v0

    if-lez v1, :cond_5

    .line 101
    sub-float/2addr p1, v3

    goto :goto_0

    .line 102
    :cond_5
    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 103
    add-float/2addr p1, v3

    goto :goto_0
.end method
