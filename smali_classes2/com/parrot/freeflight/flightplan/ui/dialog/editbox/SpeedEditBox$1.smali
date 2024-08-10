.class Lcom/parrot/freeflight/flightplan/ui/dialog/editbox/SpeedEditBox$1;
.super Ljava/lang/Object;
.source "SpeedEditBox.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/flightplan/ui/dialog/editbox/SpeedEditBox;->init(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/flightplan/ui/dialog/editbox/SpeedEditBox;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/flightplan/ui/dialog/editbox/SpeedEditBox;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/flightplan/ui/dialog/editbox/SpeedEditBox;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/parrot/freeflight/flightplan/ui/dialog/editbox/SpeedEditBox$1;->this$0:Lcom/parrot/freeflight/flightplan/ui/dialog/editbox/SpeedEditBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 37
    :try_start_0
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/dialog/editbox/SpeedEditBox$1;->this$0:Lcom/parrot/freeflight/flightplan/ui/dialog/editbox/SpeedEditBox;

    iget-object v2, v2, Lcom/parrot/freeflight/flightplan/ui/dialog/editbox/SpeedEditBox;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 41
    .local v1, "speed":I
    :goto_0
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/dialog/editbox/SpeedEditBox$1;->this$0:Lcom/parrot/freeflight/flightplan/ui/dialog/editbox/SpeedEditBox;

    invoke-static {v2}, Lcom/parrot/freeflight/flightplan/ui/dialog/editbox/SpeedEditBox;->access$000(Lcom/parrot/freeflight/flightplan/ui/dialog/editbox/SpeedEditBox;)Lcom/parrot/freeflight/flightplan/ui/dialog/editbox/OnSpeedEditListener;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/parrot/freeflight/flightplan/ui/dialog/editbox/OnSpeedEditListener;->onLineSpeedChanged(I)V

    .line 42
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/dialog/editbox/SpeedEditBox$1;->this$0:Lcom/parrot/freeflight/flightplan/ui/dialog/editbox/SpeedEditBox;

    invoke-virtual {v2}, Lcom/parrot/freeflight/flightplan/ui/dialog/editbox/SpeedEditBox;->dismiss()V

    .line 43
    return-void

    .line 38
    .end local v1    # "speed":I
    :catch_0
    move-exception v0

    .line 39
    .local v0, "e":Ljava/lang/NumberFormatException;
    const/4 v1, -0x1

    .restart local v1    # "speed":I
    goto :goto_0
.end method
