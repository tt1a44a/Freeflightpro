.class Lcom/parrot/freeflight/piloting/ui/fpv/FpvGlassesChoiceActivity$1;
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
    .line 31
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvGlassesChoiceActivity$1;->this$0:Lcom/parrot/freeflight/piloting/ui/fpv/FpvGlassesChoiceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvGlassesChoiceActivity$1;->this$0:Lcom/parrot/freeflight/piloting/ui/fpv/FpvGlassesChoiceActivity;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvGlassesChoiceActivity;->access$000(Lcom/parrot/freeflight/piloting/ui/fpv/FpvGlassesChoiceActivity;)Lcom/parrot/freeflight/piloting/preference/FpvStatePreference;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/preference/FpvStatePreference;->setGlassesType(I)V

    .line 35
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvGlassesChoiceActivity$1;->this$0:Lcom/parrot/freeflight/piloting/ui/fpv/FpvGlassesChoiceActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvGlassesChoiceActivity;->setResult(I)V

    .line 36
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvGlassesChoiceActivity$1;->this$0:Lcom/parrot/freeflight/piloting/ui/fpv/FpvGlassesChoiceActivity;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvGlassesChoiceActivity;->finish()V

    .line 37
    return-void
.end method
