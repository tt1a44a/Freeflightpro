.class public final enum Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvBufferDataType;
.super Ljava/lang/Enum;
.source "CodecConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/muvee/dsg/mmapcodec/CodecConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EMvBufferDataType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvBufferDataType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum MV_BDT_CFGHDR:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvBufferDataType;

.field public static final enum MV_BDT_H264:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvBufferDataType;

.field public static final enum MV_BDT_NONE:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvBufferDataType;

.field public static final enum MV_BDT_QCOMNV12:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvBufferDataType;

.field public static final enum MV_BDT_RGB565:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvBufferDataType;

.field public static final enum MV_BDT_RGB565_ALPHA:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvBufferDataType;

.field public static final enum MV_BDT_RGB8888:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvBufferDataType;

.field public static final enum MV_BDT_TEXTURE:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvBufferDataType;

.field public static final enum MV_BDT_YUV420P:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvBufferDataType;

.field public static final enum MV_BDT_YUV420SP:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvBufferDataType;

.field private static final synthetic c:[Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvBufferDataType;


# instance fields
.field private a:I

.field private b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 58
    new-instance v0, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvBufferDataType;

    const-string v1, "MV_BDT_NONE"

    const-string v2, "NONE"

    invoke-direct {v0, v1, v5, v5, v2}, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvBufferDataType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvBufferDataType;->MV_BDT_NONE:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvBufferDataType;

    new-instance v0, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvBufferDataType;

    const-string v1, "MV_BDT_RGB565"

    const-string v2, "RGB565"

    invoke-direct {v0, v1, v6, v6, v2}, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvBufferDataType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvBufferDataType;->MV_BDT_RGB565:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvBufferDataType;

    new-instance v0, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvBufferDataType;

    const-string v1, "MV_BDT_RGB565_ALPHA"

    const-string v2, "RGB565ALPHA"

    invoke-direct {v0, v1, v7, v7, v2}, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvBufferDataType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvBufferDataType;->MV_BDT_RGB565_ALPHA:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvBufferDataType;

    new-instance v0, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvBufferDataType;

    const-string v1, "MV_BDT_RGB8888"

    const-string v2, "RGB8888"

    invoke-direct {v0, v1, v8, v8, v2}, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvBufferDataType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvBufferDataType;->MV_BDT_RGB8888:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvBufferDataType;

    new-instance v0, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvBufferDataType;

    const-string v1, "MV_BDT_YUV420P"

    const-string v2, "YUV420P"

    invoke-direct {v0, v1, v9, v9, v2}, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvBufferDataType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvBufferDataType;->MV_BDT_YUV420P:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvBufferDataType;

    new-instance v0, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvBufferDataType;

    const-string v1, "MV_BDT_YUV420SP"

    const/4 v2, 0x5

    const/4 v3, 0x5

    const-string v4, "YUV420SP"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvBufferDataType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvBufferDataType;->MV_BDT_YUV420SP:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvBufferDataType;

    new-instance v0, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvBufferDataType;

    const-string v1, "MV_BDT_QCOMNV12"

    const/4 v2, 0x6

    const/4 v3, 0x6

    const-string v4, "QCOMNV12"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvBufferDataType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvBufferDataType;->MV_BDT_QCOMNV12:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvBufferDataType;

    .line 59
    new-instance v0, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvBufferDataType;

    const-string v1, "MV_BDT_TEXTURE"

    const/4 v2, 0x7

    const/4 v3, 0x7

    const-string v4, "OpenGLSurface"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvBufferDataType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvBufferDataType;->MV_BDT_TEXTURE:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvBufferDataType;

    new-instance v0, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvBufferDataType;

    const-string v1, "MV_BDT_CFGHDR"

    const/16 v2, 0x8

    const/16 v3, 0x8

    const-string v4, "ConfigHeader"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvBufferDataType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvBufferDataType;->MV_BDT_CFGHDR:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvBufferDataType;

    new-instance v0, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvBufferDataType;

    const-string v1, "MV_BDT_H264"

    const/16 v2, 0x9

    const/16 v3, 0x9

    const-string v4, "H264 packet"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvBufferDataType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvBufferDataType;->MV_BDT_H264:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvBufferDataType;

    .line 57
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvBufferDataType;

    sget-object v1, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvBufferDataType;->MV_BDT_NONE:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvBufferDataType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvBufferDataType;->MV_BDT_RGB565:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvBufferDataType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvBufferDataType;->MV_BDT_RGB565_ALPHA:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvBufferDataType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvBufferDataType;->MV_BDT_RGB8888:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvBufferDataType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvBufferDataType;->MV_BDT_YUV420P:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvBufferDataType;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvBufferDataType;->MV_BDT_YUV420SP:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvBufferDataType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvBufferDataType;->MV_BDT_QCOMNV12:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvBufferDataType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvBufferDataType;->MV_BDT_TEXTURE:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvBufferDataType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvBufferDataType;->MV_BDT_CFGHDR:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvBufferDataType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvBufferDataType;->MV_BDT_H264:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvBufferDataType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvBufferDataType;->c:[Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvBufferDataType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 65
    iput p3, p0, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvBufferDataType;->a:I

    .line 66
    iput-object p4, p0, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvBufferDataType;->b:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvBufferDataType;
    .locals 1

    .prologue
    .line 57
    const-class v0, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvBufferDataType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvBufferDataType;

    return-object v0
.end method

.method public static values()[Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvBufferDataType;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvBufferDataType;->c:[Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvBufferDataType;

    invoke-virtual {v0}, [Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvBufferDataType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvBufferDataType;

    return-object v0
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvBufferDataType;->a:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvBufferDataType;->b:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvBufferDataType;->b:Ljava/lang/String;

    return-object v0
.end method
