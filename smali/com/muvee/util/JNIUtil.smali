.class public Lcom/muvee/util/JNIUtil;
.super Ljava/lang/Object;
.source "JNIUtil.java"


# static fields
.field public static final MUVEE_MSG_ERROR:I = 0x0

.field public static final MUVEE_MSG_GENERAL:I = 0x4

.field public static final MUVEE_MSG_INFO:I = 0x3

.field public static final MUVEE_MSG_STATS:I = 0x2

.field public static final MUVEE_MSG_WARNING:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFloatValue(Ljava/lang/Object;)F
    .locals 1

    .prologue
    .line 122
    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method public static getIntValue(Ljava/lang/Object;)I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 127
    if-nez p0, :cond_1

    .line 140
    :cond_0
    :goto_0
    return v0

    .line 131
    :cond_1
    instance-of v1, p0, Ljava/lang/Enum;

    if-eqz v1, :cond_2

    .line 132
    check-cast p0, Ljava/lang/Enum;

    .line 133
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    goto :goto_0

    .line 136
    :cond_2
    instance-of v1, p0, Ljava/lang/Boolean;

    if-eqz v1, :cond_3

    .line 137
    check-cast p0, Ljava/lang/Boolean;

    .line 138
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 140
    :cond_3
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public static getLongValue(Ljava/lang/Object;)J
    .locals 2

    .prologue
    .line 118
    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public static invoke([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 42
    if-eqz p0, :cond_1

    array-length v0, p0

    const/4 v2, 0x2

    if-lt v0, v2, :cond_1

    .line 44
    aget-object v0, p0, v3

    instance-of v0, v0, Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 45
    aget-object v0, p0, v3

    check-cast v0, Ljava/lang/Class;

    .line 50
    :goto_0
    :try_start_0
    const-string v2, "invoke"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, [Ljava/lang/Object;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 51
    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v0

    .line 67
    :goto_1
    return-object v0

    .line 47
    :cond_0
    aget-object v0, p0, v3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    .line 52
    :catch_0
    move-exception v0

    .line 54
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    :cond_1
    :goto_2
    move-object v0, v1

    .line 67
    goto :goto_1

    .line 55
    :catch_1
    move-exception v0

    .line 57
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_2

    .line 58
    :catch_2
    move-exception v0

    .line 60
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_2

    .line 62
    :catch_3
    move-exception v0

    .line 64
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_2
.end method

.method public static javaClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    .prologue
    .line 73
    const-string v0, "CodecInitParams"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    const-class v0, Lcom/muvee/dsg/mmapcodec/CodecInitParams;

    .line 94
    :goto_0
    return-object v0

    .line 75
    :cond_0
    const-string v0, "Codec"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 76
    const-class v0, Lcom/muvee/dsg/mmapcodec/Codec;

    goto :goto_0

    .line 77
    :cond_1
    const-string v0, "CodecFrameParams"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 78
    const-class v0, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;

    goto :goto_0

    .line 79
    :cond_2
    const-string v0, "ThumbGeneretor"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 80
    const-class v0, Lcom/muvee/dsg/videothumb/ThumbGeneretor;

    goto :goto_0

    .line 81
    :cond_3
    const-string v0, "StreamInfo"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 82
    const-class v0, Lcom/muvee/dsg/mmap/api/mediareader/StreamInfo;

    goto :goto_0

    .line 83
    :cond_4
    const-string v0, "Timer"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 84
    const-class v0, Lcom/muvee/dsg/mmaputils/Timer;

    goto :goto_0

    .line 85
    :cond_5
    const-string v0, "TextRenderer"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 86
    const-class v0, Lcom/muvee/dsg/text/TextRenderer;

    goto :goto_0

    .line 87
    :cond_6
    const-string v0, "TextRendereInitParam"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 88
    const-class v0, Lcom/muvee/dsg/text/TextRendereInitParam;

    goto :goto_0

    .line 89
    :cond_7
    const-string v0, "TextRendererFrameParam"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 90
    const-class v0, Lcom/muvee/dsg/text/TextRendererFrameParam;

    goto :goto_0

    .line 91
    :cond_8
    const-string v0, "TwoJPEG"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 92
    const-class v0, Lcom/muvee/dsg/mmapcodec/CustomImageDecoder;

    goto :goto_0

    .line 94
    :cond_9
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static javaObject(D)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 110
    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public static javaObject(F)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 102
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public static javaObject(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 98
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public static javaObject(J)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 106
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method private static native nativeSetLogPriorityLevel(I)V
.end method

.method public static setLogPriorityLevel(I)V
    .locals 0

    .prologue
    .line 144
    invoke-static {p0}, Lcom/muvee/util/JNIUtil;->nativeSetLogPriorityLevel(I)V

    .line 145
    return-void
.end method
