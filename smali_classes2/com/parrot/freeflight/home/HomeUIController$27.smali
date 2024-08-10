.class Lcom/parrot/freeflight/home/HomeUIController$27;
.super Ljava/lang/Object;
.source "HomeUIController.java"

# interfaces
.implements Lcom/parrot/freeflight/core/academy/AcademyManager$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/home/HomeUIController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/home/HomeUIController;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/home/HomeUIController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/home/HomeUIController;

    .prologue
    .line 1718
    iput-object p1, p0, Lcom/parrot/freeflight/home/HomeUIController$27;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange()V
    .locals 2

    .prologue
    .line 1721
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController$27;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v0}, Lcom/parrot/freeflight/home/HomeUIController;->access$3900(Lcom/parrot/freeflight/home/HomeUIController;)V

    .line 1722
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController$27;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    iget-object v1, p0, Lcom/parrot/freeflight/home/HomeUIController$27;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v1}, Lcom/parrot/freeflight/home/HomeUIController;->access$900(Lcom/parrot/freeflight/home/HomeUIController;)Lcom/parrot/freeflight/core/academy/AcademyManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/academy/AcademyManager;->getUnreadFlightCount()I

    move-result v1

    invoke-static {v0, v1}, Lcom/parrot/freeflight/home/HomeUIController;->access$4000(Lcom/parrot/freeflight/home/HomeUIController;I)V

    .line 1723
    return-void
.end method
