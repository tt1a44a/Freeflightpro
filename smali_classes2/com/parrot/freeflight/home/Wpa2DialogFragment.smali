.class public Lcom/parrot/freeflight/home/Wpa2DialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "Wpa2DialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/home/Wpa2DialogFragment$Listener;
    }
.end annotation


# static fields
.field private static final FIRST_TRY_ARG:Ljava/lang/String; = "FIRST_TRY_ARG"

.field private static final TAG:Ljava/lang/String; = "Wpa2DialogFragment"

.field private static final WPA2_DEVICE_ARG:Ljava/lang/String; = "WPA2_DEVICE_ARG"


# instance fields
.field private mEditText:Landroid/widget/EditText;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mFirstTry:Z

.field private mListener:Lcom/parrot/freeflight/home/Wpa2DialogFragment$Listener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mWpa2Device:Lcom/parrot/freeflight/wifi/DroneConnectionInfo;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/home/Wpa2DialogFragment;)Lcom/parrot/freeflight/home/Wpa2DialogFragment$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/home/Wpa2DialogFragment;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/parrot/freeflight/home/Wpa2DialogFragment;->mListener:Lcom/parrot/freeflight/home/Wpa2DialogFragment$Listener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/home/Wpa2DialogFragment;)Lcom/parrot/freeflight/wifi/DroneConnectionInfo;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/home/Wpa2DialogFragment;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/parrot/freeflight/home/Wpa2DialogFragment;->mWpa2Device:Lcom/parrot/freeflight/wifi/DroneConnectionInfo;

    return-object v0
.end method

.method static synthetic access$200(Lcom/parrot/freeflight/home/Wpa2DialogFragment;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/home/Wpa2DialogFragment;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/parrot/freeflight/home/Wpa2DialogFragment;->mEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method public static newDialog(Lcom/parrot/freeflight/wifi/DroneConnectionInfo;Z)Lcom/parrot/freeflight/home/Wpa2DialogFragment;
    .locals 3
    .param p0, "device"    # Lcom/parrot/freeflight/wifi/DroneConnectionInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "firstTry"    # Z
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 49
    new-instance v1, Lcom/parrot/freeflight/home/Wpa2DialogFragment;

    invoke-direct {v1}, Lcom/parrot/freeflight/home/Wpa2DialogFragment;-><init>()V

    .line 51
    .local v1, "dialog":Lcom/parrot/freeflight/home/Wpa2DialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 52
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "WPA2_DEVICE_ARG"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 53
    const-string v2, "FIRST_TRY_ARG"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 54
    invoke-virtual {v1, v0}, Lcom/parrot/freeflight/home/Wpa2DialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 56
    return-object v1
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 68
    const-string v3, "Wpa2DialogFragment"

    const-string v4, "onCreateDialog: "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    invoke-virtual {p0}, Lcom/parrot/freeflight/home/Wpa2DialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "WPA2_DEVICE_ARG"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/parrot/freeflight/wifi/DroneConnectionInfo;

    iput-object v3, p0, Lcom/parrot/freeflight/home/Wpa2DialogFragment;->mWpa2Device:Lcom/parrot/freeflight/wifi/DroneConnectionInfo;

    .line 70
    invoke-virtual {p0}, Lcom/parrot/freeflight/home/Wpa2DialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "FIRST_TRY_ARG"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/parrot/freeflight/home/Wpa2DialogFragment;->mFirstTry:Z

    .line 72
    new-instance v1, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/parrot/freeflight/home/Wpa2DialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const v4, 0x7f120008

    invoke-direct {v1, v3, v4}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 73
    .local v1, "builder":Landroid/support/v7/app/AlertDialog$Builder;
    iget-object v3, p0, Lcom/parrot/freeflight/home/Wpa2DialogFragment;->mWpa2Device:Lcom/parrot/freeflight/wifi/DroneConnectionInfo;

    invoke-virtual {v3}, Lcom/parrot/freeflight/wifi/DroneConnectionInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 75
    invoke-virtual {p0}, Lcom/parrot/freeflight/home/Wpa2DialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0c0082

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 76
    .local v0, "body":Landroid/view/View;
    invoke-virtual {p0}, Lcom/parrot/freeflight/home/Wpa2DialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 78
    iget-boolean v3, p0, Lcom/parrot/freeflight/home/Wpa2DialogFragment;->mFirstTry:Z

    if-eqz v3, :cond_0

    .line 79
    const v3, 0x7f0a047c

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 82
    :cond_0
    const v3, 0x1020003

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/parrot/freeflight/home/Wpa2DialogFragment;->mEditText:Landroid/widget/EditText;

    .line 84
    const v3, 0x7f11012c

    new-instance v4, Lcom/parrot/freeflight/home/Wpa2DialogFragment$1;

    invoke-direct {v4, p0}, Lcom/parrot/freeflight/home/Wpa2DialogFragment$1;-><init>(Lcom/parrot/freeflight/home/Wpa2DialogFragment;)V

    invoke-virtual {v1, v3, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 91
    const v3, 0x7f11015c

    new-instance v4, Lcom/parrot/freeflight/home/Wpa2DialogFragment$2;

    invoke-direct {v4, p0}, Lcom/parrot/freeflight/home/Wpa2DialogFragment$2;-><init>(Lcom/parrot/freeflight/home/Wpa2DialogFragment;)V

    invoke-virtual {v1, v3, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 99
    invoke-virtual {v1, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 100
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v2

    .line 102
    .local v2, "dialog":Landroid/support/v7/app/AlertDialog;
    return-object v2
.end method

.method public onResume()V
    .locals 7

    .prologue
    .line 107
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onResume()V

    .line 109
    invoke-virtual {p0}, Lcom/parrot/freeflight/home/Wpa2DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Landroid/support/v7/app/AlertDialog;

    .line 112
    .local v0, "alertDialog":Landroid/support/v7/app/AlertDialog;
    const/4 v5, -0x1

    invoke-virtual {v0, v5}, Landroid/support/v7/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v3

    .line 113
    .local v3, "positiveButton":Landroid/widget/Button;
    iget-object v5, p0, Lcom/parrot/freeflight/home/Wpa2DialogFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->length()I

    move-result v5

    invoke-static {v5}, Lcom/parrot/freeflight/wifi/Wpa2PasswordChecker;->isSizeAllowed(I)Z

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 114
    const/4 v5, -0x2

    invoke-virtual {v0, v5}, Landroid/support/v7/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    .line 115
    .local v2, "negativeButton":Landroid/widget/Button;
    const v5, 0x1020016

    invoke-virtual {v0, v5}, Landroid/support/v7/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 117
    .local v4, "title":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/parrot/freeflight/home/Wpa2DialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 118
    .local v1, "context":Landroid/content/Context;
    invoke-static {v1, v3}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 119
    invoke-static {v1, v2}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 120
    invoke-static {v1, v4}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 122
    iget-object v5, p0, Lcom/parrot/freeflight/home/Wpa2DialogFragment;->mEditText:Landroid/widget/EditText;

    invoke-static {}, Lcom/parrot/freeflight/wifi/Wpa2PasswordChecker;->getInputFilter()[Landroid/text/InputFilter;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 123
    iget-object v5, p0, Lcom/parrot/freeflight/home/Wpa2DialogFragment;->mEditText:Landroid/widget/EditText;

    new-instance v6, Lcom/parrot/freeflight/home/Wpa2DialogFragment$3;

    invoke-direct {v6, p0, v3}, Lcom/parrot/freeflight/home/Wpa2DialogFragment$3;-><init>(Lcom/parrot/freeflight/home/Wpa2DialogFragment;Landroid/widget/Button;)V

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 138
    return-void
.end method

.method public setListener(Lcom/parrot/freeflight/home/Wpa2DialogFragment$Listener;)V
    .locals 0
    .param p1, "listener"    # Lcom/parrot/freeflight/home/Wpa2DialogFragment$Listener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 61
    iput-object p1, p0, Lcom/parrot/freeflight/home/Wpa2DialogFragment;->mListener:Lcom/parrot/freeflight/home/Wpa2DialogFragment$Listener;

    .line 62
    return-void
.end method
