.class public abstract Lcom/bumptech/glide/module/LibraryGlideModule;
.super Ljava/lang/Object;
.source "LibraryGlideModule.java"

# interfaces
.implements Lcom/bumptech/glide/module/RegistersComponents;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public registerComponents(Landroid/content/Context;Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/Registry;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "glide"    # Lcom/bumptech/glide/Glide;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "registry"    # Lcom/bumptech/glide/Registry;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 25
    return-void
.end method
