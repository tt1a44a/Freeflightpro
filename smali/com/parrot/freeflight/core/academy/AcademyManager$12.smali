.class Lcom/parrot/freeflight/core/academy/AcademyManager$12;
.super Ljava/lang/Object;
.source "AcademyManager.java"

# interfaces
.implements Lcom/parrot/freeflight/core/academy/RunOfflineManager$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/core/academy/AcademyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/core/academy/AcademyManager;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/core/academy/AcademyManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/core/academy/AcademyManager;

    .prologue
    .line 767
    iput-object p1, p0, Lcom/parrot/freeflight/core/academy/AcademyManager$12;->this$0:Lcom/parrot/freeflight/core/academy/AcademyManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange()V
    .locals 2

    .prologue
    .line 770
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyManager$12;->this$0:Lcom/parrot/freeflight/core/academy/AcademyManager;

    invoke-static {v0}, Lcom/parrot/freeflight/core/academy/AcademyManager;->access$1200(Lcom/parrot/freeflight/core/academy/AcademyManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/parrot/freeflight/core/academy/AcademyManager$12$1;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/core/academy/AcademyManager$12$1;-><init>(Lcom/parrot/freeflight/core/academy/AcademyManager$12;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 776
    return-void
.end method

.method public onRunAdded()V
    .locals 1

    .prologue
    .line 780
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyManager$12;->this$0:Lcom/parrot/freeflight/core/academy/AcademyManager;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/academy/AcademyManager;->incrementUnreadFlightCount()V

    .line 781
    return-void
.end method
