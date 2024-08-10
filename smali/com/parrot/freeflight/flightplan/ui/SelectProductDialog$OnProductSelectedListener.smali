.class public interface abstract Lcom/parrot/freeflight/flightplan/ui/SelectProductDialog$OnProductSelectedListener;
.super Ljava/lang/Object;
.source "SelectProductDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/flightplan/ui/SelectProductDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnProductSelectedListener"
.end annotation


# virtual methods
.method public abstract onProductSelected(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)V
    .param p1    # Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method
