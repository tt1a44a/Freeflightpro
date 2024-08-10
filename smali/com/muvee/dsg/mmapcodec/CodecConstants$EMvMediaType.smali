.class public final enum Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvMediaType;
.super Ljava/lang/Enum;
.source "CodecConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/muvee/dsg/mmapcodec/CodecConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EMvMediaType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvMediaType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum MV_MEDIA_TYPE_IMAGE:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvMediaType;

.field public static final enum MV_MEDIA_TYPE_THUMB:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvMediaType;

.field public static final enum MV_MEDIA_TYPE_UNKNOWN:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvMediaType;

.field public static final enum MV_MEDIA_TYPE_VIDEO:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvMediaType;

.field private static final synthetic c:[Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvMediaType;


# instance fields
.field private a:I

.field private b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 85
    new-instance v0, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvMediaType;

    const-string v1, "MV_MEDIA_TYPE_UNKNOWN"

    const-string v2, "MV_MEDIA_TYPE_UNKNOWN"

    invoke-direct {v0, v1, v3, v3, v2}, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvMediaType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvMediaType;->MV_MEDIA_TYPE_UNKNOWN:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvMediaType;

    new-instance v0, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvMediaType;

    const-string v1, "MV_MEDIA_TYPE_VIDEO"

    const-string v2, "MV_MEDIA_TYPE_VIDEO"

    invoke-direct {v0, v1, v4, v4, v2}, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvMediaType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvMediaType;->MV_MEDIA_TYPE_VIDEO:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvMediaType;

    new-instance v0, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvMediaType;

    const-string v1, "MV_MEDIA_TYPE_IMAGE"

    const-string v2, "MV_MEDIA_TYPE_IMAGE"

    invoke-direct {v0, v1, v5, v5, v2}, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvMediaType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvMediaType;->MV_MEDIA_TYPE_IMAGE:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvMediaType;

    new-instance v0, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvMediaType;

    const-string v1, "MV_MEDIA_TYPE_THUMB"

    const-string v2, "MV_MEDIA_TYPE_THUMB"

    invoke-direct {v0, v1, v6, v6, v2}, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvMediaType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvMediaType;->MV_MEDIA_TYPE_THUMB:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvMediaType;

    .line 84
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvMediaType;

    sget-object v1, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvMediaType;->MV_MEDIA_TYPE_UNKNOWN:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvMediaType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvMediaType;->MV_MEDIA_TYPE_VIDEO:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvMediaType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvMediaType;->MV_MEDIA_TYPE_IMAGE:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvMediaType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvMediaType;->MV_MEDIA_TYPE_THUMB:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvMediaType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvMediaType;->c:[Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvMediaType;

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
    .line 90
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 91
    iput p3, p0, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvMediaType;->a:I

    .line 92
    iput-object p4, p0, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvMediaType;->b:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvMediaType;
    .locals 1

    .prologue
    .line 84
    const-class v0, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvMediaType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvMediaType;

    return-object v0
.end method

.method public static values()[Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvMediaType;
    .locals 1

    .prologue
    .line 84
    sget-object v0, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvMediaType;->c:[Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvMediaType;

    invoke-virtual {v0}, [Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvMediaType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvMediaType;

    return-object v0
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvMediaType;->a:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvMediaType;->b:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvMediaType;->b:Ljava/lang/String;

    return-object v0
.end method
