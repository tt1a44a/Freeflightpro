.class public Lcom/muvee/dsg/text/TextRenderParamMap;
.super Ljava/util/HashMap;
.source "TextRenderParamMap.java"

# interfaces
.implements Lcom/muvee/dsg/text/TextRendererConstant;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;",
        "Lcom/muvee/dsg/text/TextRendererConstant;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 16
    return-void
.end method


# virtual methods
.method public setTextAlignment(I)V
    .locals 2

    .prologue
    .line 50
    const-string v0, "key.text.alignment"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/muvee/dsg/text/TextRenderParamMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    return-void
.end method

.method public setTextColor(I)Lcom/muvee/dsg/text/TextRenderParamMap;
    .locals 2

    .prologue
    .line 20
    const-string v0, "key.text.color"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/muvee/dsg/text/TextRenderParamMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    return-object p0
.end method

.method public setTextFont(Landroid/graphics/Typeface;)Lcom/muvee/dsg/text/TextRenderParamMap;
    .locals 1

    .prologue
    .line 37
    const-string v0, "key.text.font"

    invoke-virtual {p0, v0, p1}, Lcom/muvee/dsg/text/TextRenderParamMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    return-object p0
.end method

.method public setTextLayoutAlignment(I)V
    .locals 2

    .prologue
    .line 62
    const-string v0, "key.text.layout.alignment"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/muvee/dsg/text/TextRenderParamMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    return-void
.end method

.method public setTextSizePixel(F)Lcom/muvee/dsg/text/TextRenderParamMap;
    .locals 2

    .prologue
    .line 25
    const-string v0, "key.text.size.pixel"

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/muvee/dsg/text/TextRenderParamMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    const-string v0, "key.text.size.ratio"

    const/high16 v1, -0x40800000    # -1.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/muvee/dsg/text/TextRenderParamMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    return-object p0
.end method

.method public setTextSizeRatio(F)Lcom/muvee/dsg/text/TextRenderParamMap;
    .locals 2

    .prologue
    .line 31
    const-string v0, "key.text.size.ratio"

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/muvee/dsg/text/TextRenderParamMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    const-string v0, "key.text.size.pixel"

    const/high16 v1, -0x40800000    # -1.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/muvee/dsg/text/TextRenderParamMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    return-object p0
.end method
