.class Lcom/muvee/dsg/mmapcodec/booster/DecoderBoosterEngine$b;
.super Ljava/lang/Object;
.source "DecoderBoosterEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/muvee/dsg/mmapcodec/booster/DecoderBoosterEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/muvee/dsg/mmapcodec/booster/DecoderBoosterEngine$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/muvee/dsg/mmapcodec/booster/DecoderBoosterEngine$b;->a:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/muvee/dsg/mmapcodec/booster/DecoderBoosterEngine$1;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/muvee/dsg/mmapcodec/booster/DecoderBoosterEngine$b;-><init>()V

    return-void
.end method
