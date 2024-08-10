.class Lcom/parrot/freeflight/settings/CalibrationActivity$1;
.super Ljava/lang/Object;
.source "CalibrationActivity.java"

# interfaces
.implements Lcom/parrot/freeflight/piloting/ui/UIController$OnBackButtonClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/settings/CalibrationActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/settings/CalibrationActivity;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/settings/CalibrationActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/settings/CalibrationActivity;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/parrot/freeflight/settings/CalibrationActivity$1;->this$0:Lcom/parrot/freeflight/settings/CalibrationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackButtonClick()V
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/parrot/freeflight/settings/CalibrationActivity$1;->this$0:Lcom/parrot/freeflight/settings/CalibrationActivity;

    invoke-virtual {v0}, Lcom/parrot/freeflight/settings/CalibrationActivity;->onBackPressed()V

    .line 47
    return-void
.end method
