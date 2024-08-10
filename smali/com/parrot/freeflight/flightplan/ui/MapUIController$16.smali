.class Lcom/parrot/freeflight/flightplan/ui/MapUIController$16;
.super Ljava/lang/Object;
.source "MapUIController.java"

# interfaces
.implements Lcom/parrot/freeflight/flightplan/ui/SelectProductDialog$OnProductSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/flightplan/ui/MapUIController;->showProductSelectionDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/flightplan/ui/MapUIController;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/flightplan/ui/MapUIController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    .prologue
    .line 878
    iput-object p1, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController$16;->this$0:Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProductSelected(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)V
    .locals 2
    .param p1, "planProduct"    # Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 881
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController$16;->this$0:Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    invoke-static {v1}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->access$2200(Lcom/parrot/freeflight/flightplan/ui/MapUIController;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristicsFactory;->create(Landroid/content/Context;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristics;

    move-result-object v0

    .line 882
    .local v0, "planProductCharacteristics":Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristics;
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController$16;->this$0:Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    invoke-virtual {v1, p1, v0}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->setPlanProductInfo(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristics;)V

    .line 883
    return-void
.end method
