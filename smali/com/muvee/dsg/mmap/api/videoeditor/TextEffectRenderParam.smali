.class public Lcom/muvee/dsg/mmap/api/videoeditor/TextEffectRenderParam;
.super Ljava/util/HashMap;
.source "TextEffectRenderParam.java"

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
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 24
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 25
    const-string v0, "key.text.start"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/muvee/dsg/mmap/api/videoeditor/TextEffectRenderParam;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    const-string v0, "key.text.end"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/muvee/dsg/mmap/api/videoeditor/TextEffectRenderParam;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    return-void
.end method


# virtual methods
.method public setAlignment(I)V
    .locals 2

    .prologue
    .line 76
    const-string v0, "key.text.alignment"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/muvee/dsg/mmap/api/videoeditor/TextEffectRenderParam;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    return-void
.end method

.method public setFont(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 63
    const-string v0, "key.text.font"

    invoke-virtual {p0, v0, p2}, Lcom/muvee/dsg/mmap/api/videoeditor/TextEffectRenderParam;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    const-string v0, "key.text.font.object.type"

    invoke-virtual {p0, v0, p1}, Lcom/muvee/dsg/mmap/api/videoeditor/TextEffectRenderParam;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 2

    .prologue
    .line 43
    const-string v0, "key.text"

    invoke-virtual {p0, v0, p1}, Lcom/muvee/dsg/mmap/api/videoeditor/TextEffectRenderParam;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    const-string v0, "key.text.start"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/muvee/dsg/mmap/api/videoeditor/TextEffectRenderParam;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    const-string v0, "key.text.end"

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/muvee/dsg/mmap/api/videoeditor/TextEffectRenderParam;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;II)V
    .locals 2

    .prologue
    .line 37
    const-string v0, "key.text"

    invoke-virtual {p0, v0, p1}, Lcom/muvee/dsg/mmap/api/videoeditor/TextEffectRenderParam;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    const-string v0, "key.text.start"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/muvee/dsg/mmap/api/videoeditor/TextEffectRenderParam;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    const-string v0, "key.text.end"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/muvee/dsg/mmap/api/videoeditor/TextEffectRenderParam;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    return-void
.end method

.method public setTextColor(I)V
    .locals 2

    .prologue
    .line 53
    const-string v0, "key.text.color"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/muvee/dsg/mmap/api/videoeditor/TextEffectRenderParam;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    return-void
.end method
