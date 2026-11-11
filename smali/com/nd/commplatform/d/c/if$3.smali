.class final Lcom/nd/commplatform/d/c/if$3;
.super Lcom/nd/commplatform/NdCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/if;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nd/commplatform/NdCallbackListener",
        "<",
        "Lcom/nd/commplatform/entry/NdAppServProInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/nd/commplatform/d/c/if;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/if;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/if$3;->a:Lcom/nd/commplatform/d/c/if;

    invoke-direct {p0}, Lcom/nd/commplatform/NdCallbackListener;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILcom/nd/commplatform/entry/NdAppServProInfo;)V
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/if$3;->a:Lcom/nd/commplatform/d/c/if;

    invoke-virtual {v0, v5}, Lcom/nd/commplatform/d/c/if;->b(Z)V

    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/if$3;->a:Lcom/nd/commplatform/d/c/if;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/if;->i(Lcom/nd/commplatform/d/c/if;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/nd/commplatform/d/c/if$3;->a:Lcom/nd/commplatform/d/c/if;

    invoke-virtual {v1}, Lcom/nd/commplatform/d/c/if;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/nd/commplatform/d/c/jo$h;->bR:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/nd/commplatform/entry/NdAppServProInfo;->getMerchant()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/if$3;->a:Lcom/nd/commplatform/d/c/if;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/if;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/nd/commplatform/d/c/nt;->a(Lcom/nd/commplatform/NdCallbackListener;Landroid/content/Context;I)V

    goto :goto_0
.end method

.method public synthetic callback(ILjava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    check-cast p2, Lcom/nd/commplatform/entry/NdAppServProInfo;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/nd/commplatform/d/c/if$3;->a(ILcom/nd/commplatform/entry/NdAppServProInfo;)V

    return-void
.end method
