.class Lcom/parrot/freeflight/piloting/ui/fpv/FpvController$4;
.super Ljava/lang/Object;
.source "FpvController.java"

# interfaces
.implements Lcom/parrot/freeflight/core/model/Model$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;

    .prologue
    .line 216
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController$4;->this$0:Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange()V
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController$4;->this$0:Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->access$800(Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;)V

    .line 220
    return-void
.end method
