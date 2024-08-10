.class public Lcom/muvee/dsg/mmas/api/advancevideomixer/TextureInfo;
.super Ljava/lang/Object;
.source "TextureInfo.java"


# instance fields
.field public height:I

.field public rotation:I

.field public textureId:I

.field public type:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTextureRender$TextureType;

.field public width:I


# direct methods
.method public constructor <init>(ILcom/muvee/dsg/mmas/api/advancevideomixer/VmTextureRender$TextureType;III)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput p1, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/TextureInfo;->textureId:I

    .line 30
    iput-object p2, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/TextureInfo;->type:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTextureRender$TextureType;

    .line 31
    iput p3, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/TextureInfo;->rotation:I

    .line 32
    iput p4, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/TextureInfo;->width:I

    .line 33
    iput p5, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/TextureInfo;->height:I

    .line 34
    return-void
.end method


# virtual methods
.method public getAspecRatio()F
    .locals 2

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 38
    iget v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/TextureInfo;->rotation:I

    sparse-switch v0, :sswitch_data_0

    .line 44
    iget v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/TextureInfo;->width:I

    int-to-float v0, v0

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/TextureInfo;->height:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    :goto_0
    return v0

    .line 41
    :sswitch_0
    iget v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/TextureInfo;->height:I

    int-to-float v0, v0

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/TextureInfo;->width:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    goto :goto_0

    .line 38
    nop

    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_0
        0x10e -> :sswitch_0
    .end sparse-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TextureInfo [textureId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/TextureInfo;->textureId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/TextureInfo;->type:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTextureRender$TextureType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/TextureInfo;->rotation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/TextureInfo;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/TextureInfo;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
