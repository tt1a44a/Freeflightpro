.class Lcom/parrot/freeflight/core/academy/AcademyManager$12$1;
.super Ljava/lang/Object;
.source "AcademyManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/core/academy/AcademyManager$12;->onChange()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/parrot/freeflight/core/academy/AcademyManager$12;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/core/academy/AcademyManager$12;)V
    .locals 0
    .param p1, "this$1"    # Lcom/parrot/freeflight/core/academy/AcademyManager$12;

    .prologue
    .line 770
    iput-object p1, p0, Lcom/parrot/freeflight/core/academy/AcademyManager$12$1;->this$1:Lcom/parrot/freeflight/core/academy/AcademyManager$12;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 773
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyManager$12$1;->this$1:Lcom/parrot/freeflight/core/academy/AcademyManager$12;

    iget-object v0, v0, Lcom/parrot/freeflight/core/academy/AcademyManager$12;->this$0:Lcom/parrot/freeflight/core/academy/AcademyManager;

    invoke-static {v0}, Lcom/parrot/freeflight/core/academy/AcademyManager;->access$100(Lcom/parrot/freeflight/core/academy/AcademyManager;)V

    .line 774
    return-void
.end method
