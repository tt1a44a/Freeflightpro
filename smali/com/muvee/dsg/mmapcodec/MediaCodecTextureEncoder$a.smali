.class final enum Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder$a;
.super Ljava/lang/Enum;
.source "MediaCodecTextureEncoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder$a;

.field public static final enum b:Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder$a;

.field private static final synthetic c:[Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder$a;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 459
    new-instance v0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder$a;

    const-string v1, "GET_NEXT_FRAME"

    invoke-direct {v0, v1, v2}, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder$a;->a:Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder$a;

    new-instance v0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder$a;

    const-string v1, "CLOSE_CODEC"

    invoke-direct {v0, v1, v3}, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder$a;->b:Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder$a;

    .line 458
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder$a;

    sget-object v1, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder$a;->a:Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder$a;->b:Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder$a;

    aput-object v1, v0, v3

    sput-object v0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder$a;->c:[Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 458
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder$a;
    .locals 1

    .prologue
    .line 458
    const-class v0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder$a;

    return-object v0
.end method

.method public static values()[Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder$a;
    .locals 1

    .prologue
    .line 458
    sget-object v0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder$a;->c:[Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder$a;

    invoke-virtual {v0}, [Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder$a;

    return-object v0
.end method
