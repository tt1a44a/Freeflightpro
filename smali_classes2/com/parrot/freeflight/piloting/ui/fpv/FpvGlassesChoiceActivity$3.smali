.class Lcom/parrot/freeflight/piloting/ui/fpv/FpvGlassesChoiceActivity$3;
.super Ljava/lang/Object;
.source "FpvGlassesChoiceActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/piloting/ui/fpv/FpvGlassesChoiceActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/piloting/ui/fpv/FpvGlassesChoiceActivity;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/piloting/ui/fpv/FpvGlassesChoiceActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/piloting/ui/fpv/FpvGlassesChoiceActivity;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvGlassesChoiceActivity$3;->this$0:Lcom/parrot/freeflight/piloting/ui/fpv/FpvGlassesChoiceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvGlassesChoiceActivity$3;->this$0:Lcom/parrot/freeflight/piloting/ui/fpv/FpvGlassesChoiceActivity;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvGlassesChoiceActivity;->onBackPressed()V

    .line 55
    return-void
.end method
