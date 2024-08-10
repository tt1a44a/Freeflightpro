.class public Lcom/muvee/dsg/mmas/api/texture/util/TextureInfo;
.super Ljava/lang/Object;
.source "TextureInfo.java"


# instance fields
.field public rotation:I

.field public textureId:I

.field public type:Lcom/muvee/dsg/mmas/api/texture/util/TextureRender$TextureType;


# direct methods
.method public constructor <init>(ILcom/muvee/dsg/mmas/api/texture/util/TextureRender$TextureType;I)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput p1, p0, Lcom/muvee/dsg/mmas/api/texture/util/TextureInfo;->textureId:I

    .line 14
    iput-object p2, p0, Lcom/muvee/dsg/mmas/api/texture/util/TextureInfo;->type:Lcom/muvee/dsg/mmas/api/texture/util/TextureRender$TextureType;

    .line 15
    iput p3, p0, Lcom/muvee/dsg/mmas/api/texture/util/TextureInfo;->rotation:I

    .line 16
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TextureInfo [textureId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/muvee/dsg/mmas/api/texture/util/TextureInfo;->textureId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/muvee/dsg/mmas/api/texture/util/TextureInfo;->type:Lcom/muvee/dsg/mmas/api/texture/util/TextureRender$TextureType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/muvee/dsg/mmas/api/texture/util/TextureInfo;->rotation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
