.class public Lcom/parrot/freeflight/flightplan/ui/SelectProductDialog;
.super Landroid/app/Dialog;
.source "SelectProductDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/flightplan/ui/SelectProductDialog$OnProductSelectedListener;
    }
.end annotation


# instance fields
.field private final mOnProductSelectedListener:Lcom/parrot/freeflight/flightplan/ui/SelectProductDialog$OnProductSelectedListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/parrot/freeflight/flightplan/ui/SelectProductDialog$OnProductSelectedListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "onProductSelectedListener"    # Lcom/parrot/freeflight/flightplan/ui/SelectProductDialog$OnProductSelectedListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 23
    const v0, 0x7f120009

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 24
    iput-object p2, p0, Lcom/parrot/freeflight/flightplan/ui/SelectProductDialog;->mOnProductSelectedListener:Lcom/parrot/freeflight/flightplan/ui/SelectProductDialog$OnProductSelectedListener;

    .line 25
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/flightplan/ui/SelectProductDialog;->requestWindowFeature(I)Z

    .line 26
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/flightplan/ui/SelectProductDialog;->setCanceledOnTouchOutside(Z)V

    .line 27
    const v0, 0x7f0c0081

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/flightplan/ui/SelectProductDialog;->setContentView(I)V

    .line 28
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/flightplan/ui/SelectProductDialog;->initUi(Landroid/content/Context;)V

    .line 29
    return-void
.end method

.method private initTextView(Landroid/content/Context;IILcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "layoutId"    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param
    .param p3, "textViewId"    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param
    .param p4, "product"    # Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 32
    invoke-virtual {p0, p3}, Lcom/parrot/freeflight/flightplan/ui/SelectProductDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 33
    .local v1, "productTextView":Landroid/widget/TextView;
    invoke-static {p4}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->getProductName(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    invoke-static {p1, v1}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 36
    invoke-virtual {p0, p2}, Lcom/parrot/freeflight/flightplan/ui/SelectProductDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 37
    .local v0, "productLayout":Landroid/widget/LinearLayout;
    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    return-void
.end method

.method private initUi(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 41
    const v0, 0x7f0a0262

    const v1, 0x7f0a0438

    sget-object v2, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_ARDRONE:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/parrot/freeflight/flightplan/ui/SelectProductDialog;->initTextView(Landroid/content/Context;IILcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)V

    .line 42
    const v0, 0x7f0a0261

    const v1, 0x7f0a0437

    sget-object v2, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_BEBOP_2:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/parrot/freeflight/flightplan/ui/SelectProductDialog;->initTextView(Landroid/content/Context;IILcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)V

    .line 43
    const v0, 0x7f0a026e

    const v1, 0x7f0a043e

    sget-object v2, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_CHIMERA:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/parrot/freeflight/flightplan/ui/SelectProductDialog;->initTextView(Landroid/content/Context;IILcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)V

    .line 44
    const v0, 0x7f0a027b

    const v1, 0x7f0a045b

    sget-object v2, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_EVINRUDE:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/parrot/freeflight/flightplan/ui/SelectProductDialog;->initTextView(Landroid/content/Context;IILcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)V

    .line 46
    const v0, 0x7f0a04a6

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/flightplan/ui/SelectProductDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 47
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 51
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/SelectProductDialog;->mOnProductSelectedListener:Lcom/parrot/freeflight/flightplan/ui/SelectProductDialog$OnProductSelectedListener;

    if-eqz v1, :cond_0

    .line 52
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 54
    .local v0, "viewId":I
    const v1, 0x7f0a0262

    if-ne v0, v1, :cond_1

    .line 55
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/SelectProductDialog;->mOnProductSelectedListener:Lcom/parrot/freeflight/flightplan/ui/SelectProductDialog$OnProductSelectedListener;

    sget-object v2, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_ARDRONE:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    invoke-interface {v1, v2}, Lcom/parrot/freeflight/flightplan/ui/SelectProductDialog$OnProductSelectedListener;->onProductSelected(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)V

    .line 64
    .end local v0    # "viewId":I
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/parrot/freeflight/flightplan/ui/SelectProductDialog;->dismiss()V

    .line 65
    return-void

    .line 56
    .restart local v0    # "viewId":I
    :cond_1
    const v1, 0x7f0a0261

    if-ne v0, v1, :cond_2

    .line 57
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/SelectProductDialog;->mOnProductSelectedListener:Lcom/parrot/freeflight/flightplan/ui/SelectProductDialog$OnProductSelectedListener;

    sget-object v2, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_BEBOP_2:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    invoke-interface {v1, v2}, Lcom/parrot/freeflight/flightplan/ui/SelectProductDialog$OnProductSelectedListener;->onProductSelected(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)V

    goto :goto_0

    .line 58
    :cond_2
    const v1, 0x7f0a026e

    if-ne v0, v1, :cond_3

    .line 59
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/SelectProductDialog;->mOnProductSelectedListener:Lcom/parrot/freeflight/flightplan/ui/SelectProductDialog$OnProductSelectedListener;

    sget-object v2, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_CHIMERA:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    invoke-interface {v1, v2}, Lcom/parrot/freeflight/flightplan/ui/SelectProductDialog$OnProductSelectedListener;->onProductSelected(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)V

    goto :goto_0

    .line 60
    :cond_3
    const v1, 0x7f0a027b

    if-ne v0, v1, :cond_0

    .line 61
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/SelectProductDialog;->mOnProductSelectedListener:Lcom/parrot/freeflight/flightplan/ui/SelectProductDialog$OnProductSelectedListener;

    sget-object v2, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_EVINRUDE:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    invoke-interface {v1, v2}, Lcom/parrot/freeflight/flightplan/ui/SelectProductDialog$OnProductSelectedListener;->onProductSelected(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)V

    goto :goto_0
.end method
