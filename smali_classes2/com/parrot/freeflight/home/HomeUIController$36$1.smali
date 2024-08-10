.class Lcom/parrot/freeflight/home/HomeUIController$36$1;
.super Ljava/lang/Object;
.source "HomeUIController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/home/HomeUIController$36;->onMediaListed(SS)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/parrot/freeflight/home/HomeUIController$36;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/home/HomeUIController$36;)V
    .locals 0
    .param p1, "this$1"    # Lcom/parrot/freeflight/home/HomeUIController$36;

    .prologue
    .line 2176
    iput-object p1, p0, Lcom/parrot/freeflight/home/HomeUIController$36$1;->this$1:Lcom/parrot/freeflight/home/HomeUIController$36;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 2179
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController$36$1;->this$1:Lcom/parrot/freeflight/home/HomeUIController$36;

    iget-object v0, v0, Lcom/parrot/freeflight/home/HomeUIController$36;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v0}, Lcom/parrot/freeflight/home/HomeUIController;->access$6200(Lcom/parrot/freeflight/home/HomeUIController;)V

    .line 2180
    return-void
.end method
