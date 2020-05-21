<?php

namespace Step\Acceptance\PaymentMethod;

use Facebook\WebDriver\Exception\TimeOutException;
use Facebook\WebDriver\Exception\UnknownServerException;
use Step\Acceptance\iPerformFillPaymentFields;
use Step\Acceptance\iPerformPayment;
use Exception;

class IdealStep extends GenericPaymentMethodStep implements iPerformPayment
{
    const STEP_NAME = 'iDeal';

    /**
     * @throws Exception
     */
    public function performPaymentMethodActionsOutsideShop() : void
    {
        $this->preparedClick($this->getLocator()->confirm_transaction, 60);
    }
}
