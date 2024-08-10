.class public Lcom/muvee/dsg/text/TextRendererFrameParam;
.super Ljava/lang/Object;
.source "TextRendererFrameParam.java"


# instance fields
.field public buffer:Ljava/nio/ByteBuffer;

.field public bufferHeight:I

.field public bufferSize:I

.field public bufferWidth:I

.field public effectType:I

.field public nextNewFrameTimeFactor:F

.field public reguestHeight:I

.field public reguestWidth:I

.field public renderParam:Ljava/lang/Object;

.field public requestTimeFactor:F

.field public time:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x2

    move v1, v0

    :goto_0
    array-length v0, p1

    if-ge v1, v0, :cond_0

    .line 34
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    aget-object v0, p1, v1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v2

    .line 35
    add-int/lit8 v0, v1, 0x1

    .line 36
    :try_start_1
    aget-object v1, p1, v0

    invoke-virtual {v2, p0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3

    .line 32
    :goto_1
    add-int/lit8 v0, v0, 0x1

    move v1, v0

    goto :goto_0

    .line 38
    :catch_0
    move-exception v0

    move-object v3, v0

    move v0, v1

    move-object v1, v3

    .line 39
    :goto_2
    invoke-virtual {v1}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_1

    .line 40
    :catch_1
    move-exception v0

    move-object v3, v0

    move v0, v1

    move-object v1, v3

    .line 41
    :goto_3
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    .line 42
    :catch_2
    move-exception v0

    move-object v3, v0

    move v0, v1

    move-object v1, v3

    .line 43
    :goto_4
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    .line 46
    :cond_0
    return-void

    .line 42
    :catch_3
    move-exception v1

    goto :goto_4

    .line 40
    :catch_4
    move-exception v1

    goto :goto_3

    .line 38
    :catch_5
    move-exception v1

    goto :goto_2
.end method

.method private static a([Ljava/lang/Object;)Lcom/muvee/dsg/text/TextRendererFrameParam;
    .locals 1

    .prologue
    .line 27
    new-instance v0, Lcom/muvee/dsg/text/TextRendererFrameParam;

    invoke-direct {v0, p0}, Lcom/muvee/dsg/text/TextRendererFrameParam;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method

.method public static invoke([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 20
    const/4 v0, 0x1

    aget-object v0, p0, v0

    const-string v1, "create"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 21
    invoke-static {p0}, Lcom/muvee/dsg/text/TextRendererFrameParam;->a([Ljava/lang/Object;)Lcom/muvee/dsg/text/TextRendererFrameParam;

    move-result-object v0

    .line 23
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
