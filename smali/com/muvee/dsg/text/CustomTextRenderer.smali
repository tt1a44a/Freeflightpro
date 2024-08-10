.class public interface abstract Lcom/muvee/dsg/text/CustomTextRenderer;
.super Ljava/lang/Object;
.source "CustomTextRenderer.java"

# interfaces
.implements Lcom/muvee/dsg/text/TextRendererConstant;


# virtual methods
.method public abstract close()V
.end method

.method public abstract getFrame(Lcom/muvee/dsg/text/TextRendererFrameParam;)Lcom/muvee/dsg/text/TextRendererFrameParam;
.end method

.method public abstract init(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method
